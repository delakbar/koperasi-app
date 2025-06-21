<?php

namespace App\Imports;

use App\Models\Simpanan;
use App\Models\Angsuran;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class SimpananImport implements ToCollection, WithStartRow
{
    public $log = [];

    public function startRow(): int
    {
        return 4; // Baris data dimulai dari row ke-4
    }

    public function collection(Collection $rows)
    {
        foreach ($rows as $rowIndex => $row) {
            $nama = trim($row[2]); // Kolom C = index 2 (NAMA)
            $anggotaId = trim($row[1]); // Kolom B = index 1 (NO / anggota_id)

            $logRow = [
                'row' => $rowIndex + 4,
                'nama' => $nama,
                'anggota_id' => $anggotaId,
                'simpanan' => [],
                'angsuran_update' => 'not found',
            ];

            // Insert ke tabel simpanan (kolom D - F)
            for ($i = 3; $i <= 5; $i++) {
                $jenis = strtolower(trim($this->getHeaderByIndex($i)));
                $nominal = str_replace(',', '', trim($row[$i]));

                if (is_numeric($nominal)) {
                    Simpanan::create([
                        'anggota_id' => $anggotaId,
                        'nama' => $nama,
                        'jenis_simpanan' => $this->mappingJenisSimpanan($jenis),
                        'nominal_simpanan' => $nominal,
                        'input_by' => Auth::user()->name ?? 'system',
                        'tgl_update' => Carbon::now(),
                    ]);
                    $logRow['simpanan'][] = "$jenis: success";
                } else {
                    $logRow['simpanan'][] = "$jenis: skipped";
                }
            }

            // Kolom G dan H → CICILAN dan JASA (index 6 dan 7)
            $cicilan = str_replace(',', '', trim($row[6]));
            $jasa = str_replace(',', '', trim($row[7]));

            if (is_numeric($cicilan) || is_numeric($jasa)) {
                $angsuran = Angsuran::where('angsuran.anggota_id', $anggotaId)
                ->where('angsuran.status_bayar', '0')
                ->join('pinjaman', 'angsuran.pinjaman_id', '=', 'pinjaman.id')
                ->where('pinjaman.jenis_pinjaman', 'gaji')
                ->orderBy('angsuran.tgl_input', 'desc')
                ->select('angsuran.*')
                ->first();

                if ($angsuran) {
                    $angsuran->status_bayar = '1';
                    $angsuran->tgl_input = Carbon::now();
                    $angsuran->nominal_jasa = $jasa;
                    $angsuran->save();

                    $logRow['angsuran_update'] = 'success';
                } else {
                    $logRow['angsuran_update'] = 'not found';
                }
            } else {
                $logRow['angsuran_update'] = 'skipped';
            }

            $this->log[] = $logRow;
        }
    }

    private function getHeaderByIndex($index)
    {
        $map = [
            3 => 'simpanan pokok',
            4 => 'simpanan wajib',
            5 => 'simpanan sukarela',
        ];

        return $map[$index] ?? 'lainnya';
    }

    private function mappingJenisSimpanan($header)
    {
        if (str_contains($header, 'wajib')) return 'wajib';
        if (str_contains($header, 'pokok')) return 'pokok';
        if (str_contains($header, 'sukarela')) return 'sukarela';
        return 'lainnya';
    }
}
