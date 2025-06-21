<?php

namespace App\Imports;

use App\Models\Simpanan;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class SimpananImport implements ToCollection, WithStartRow
{
    public function startRow(): int
    {
        return 4; // Mulai dari baris ke-4 (data)
    }

    public function collection(Collection $rows)
    {
        foreach ($rows as $row) {
            $nama = trim($row[2]); // Kolom C = index 2 (NAMA)
            $anggotaId = trim($row[1]); // Kolom B = index 1 (NO / anggota_id)

            for ($i = 3; $i <= 5; $i++) { // Kolom D-F: simpanan pokok, wajib, sukarela
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
                }
            }
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
