<?php

namespace App\Imports;

use App\Models\Angsuran;
use App\Models\Anggota;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithStartRow;

class RemunImport implements ToCollection, WithStartRow
{
    public $log = [];

    public function startRow(): int
    {
        return 3; // Data dimulai dari baris ke-3
    }

    public function collection(Collection $rows)
    {
        foreach ($rows as $rowIndex => $row) {
            $username = trim($row[10]); // Kolom K (index 10)
            $nominal = preg_replace('/[^\d]/', '', $row[3]); // Kolom D (index 3), hilangkan koma/titik/karakter non-digit
            $logRow = [
                'row' => $rowIndex + 3,
                'username' => $username,
                'nominal' => $nominal,
                'status' => 'not found',
            ];

            if (!$username || !is_numeric($nominal)) {
                $logRow['status'] = 'invalid data';
                $this->log[] = $logRow;
                continue;
            }

            $angsuran = Angsuran::join('anggota', 'anggota.id', '=', 'angsuran.anggota_id')
            ->where('anggota.username', $username)
            ->where('angsuran.status_bayar', 0)
            ->join('pinjaman', 'angsuran.pinjaman_id', '=', 'pinjaman.id')
            ->where('pinjaman.jenis_pinjaman', 'Remunerasi')
            ->orderBy('angsuran.tgl_input', 'asc')
            ->select('angsuran.*')
            ->first();

            if ($angsuran) {
                $angsuran->status_bayar = 1;
                $angsuran->nominal_bayar = $nominal;
                $angsuran->tgl_input = Carbon::now();
                $angsuran->input_by = Auth::user()->name ?? 'system';
                $angsuran->save();

                $logRow['status'] = 'success';
            } else {
                $logRow['status'] = 'no angsuran found';
            }

            $this->log[] = $logRow;
        }
    }
}
