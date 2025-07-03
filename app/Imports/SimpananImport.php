<?php

namespace App\Imports;

use App\Models\Simpanan;
use App\Models\Angsuran;
<<<<<<< HEAD
use App\Models\Anggota;
=======
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
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
<<<<<<< HEAD
            $username = trim($row[9]); // Kolom J = index 9 (USERNAME)
            $anggotaId = trim($row[1]); // Kolom B = index 1 (NO)
=======
            $anggotaId = trim($row[9]); // Kolom J = index 9 (NO / anggota_id)
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f

            $logRow = [
                'row' => $rowIndex + 4,
                'nama' => $nama,
                'anggota_id' => $anggotaId,
<<<<<<< HEAD
                'username' => $username,
=======
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
                'simpanan' => [],
                'angsuran_update' => 'not found',
            ];

<<<<<<< HEAD
            // Cari anggota_id berdasarkan username
            $anggota = \App\Models\Anggota::where('username', $username)->first();

            if (!$anggota) {
                $logRow['simpanan'][] = 'username not found';
                $logRow['angsuran_update'] = 'username not found';
                $this->log[] = $logRow;
                continue; // Lewati baris ini jika tidak ketemu
            }

            $anggotaId = $anggota->id;

            // === SIMPANAN (Kolom D - F) ===
=======
            // Insert ke tabel simpanan (kolom D - F)
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
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

<<<<<<< HEAD
            // === ANGSURAN (Kolom G = CICILAN, H = JASA) ===
=======
            // Kolom G dan H → CICILAN dan JASA (index 6 dan 7)
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
            $cicilan = str_replace(',', '', trim($row[6]));
            $jasa = str_replace(',', '', trim($row[7]));

            if (is_numeric($cicilan) || is_numeric($jasa)) {
                $angsuran = Angsuran::where('angsuran.anggota_id', $anggotaId)
<<<<<<< HEAD
                    ->where('angsuran.status_bayar', '0')
                    ->join('pinjaman', 'angsuran.pinjaman_id', '=', 'pinjaman.id')
                    ->where('pinjaman.jenis_pinjaman', 'gaji')
                    ->orderBy('angsuran.tgl_input', 'asc')
                    ->select('angsuran.*')
                    ->first();
=======
                ->where('angsuran.status_bayar', '0')
                ->join('pinjaman', 'angsuran.pinjaman_id', '=', 'pinjaman.id')
                ->where('pinjaman.jenis_pinjaman', 'gaji')
                ->orderBy('angsuran.tgl_input', 'desc')
                ->select('angsuran.*')
                ->first();
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f

                if ($angsuran) {
                    $angsuran->status_bayar = '1';
                    $angsuran->tgl_input = Carbon::now();
<<<<<<< HEAD
                    $angsuran->nominal_jasa = is_numeric($jasa) ? $jasa : 0;
=======
                    $angsuran->nominal_jasa = $jasa;
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
                    $angsuran->save();

                    $logRow['angsuran_update'] = 'success';
                } else {
<<<<<<< HEAD
                    $logRow['angsuran_update'] = 'no unpaid angsuran';
=======
                    $logRow['angsuran_update'] = 'not found';
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
                }
            } else {
                $logRow['angsuran_update'] = 'skipped';
            }

            $this->log[] = $logRow;
        }
    }

<<<<<<< HEAD

=======
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
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
