<?php

namespace App\Http\Controllers;

use App\Models\Angsuran;
use App\Models\Pinjaman;
use Illuminate\Http\Request;

class KetuaPinjamanController extends Controller
{
    public function index()
    {
        $pinjamanPengajuan = Pinjaman::with('anggota')

            ->orderBy('tgl_input', 'desc')
            ->get();

        return view('pinjaman.cekpinjaman', compact('pinjamanPengajuan'));
    }

    public function updateStatus(Request $request, $id)
    {
        // Validasi input
        $request->validate([
            'status' => 'required|string',
            'keterangan' => 'nullable|string',
        ]);

        // Cari data pinjaman berdasarkan ID
        $pinjaman = Pinjaman::findOrFail($id);

        // Update status pinjaman
        $pinjaman->status = $request->status;

        // Jika status mengandung kata "Ditolak", simpan keterangan
        if (strpos($request->status, 'Ditolak') !== false) {
            $pinjaman->keterangan = $request->keterangan;
        } else {
            $pinjaman->keterangan = null;
        }

        // Simpan perubahan status pinjaman
        $pinjaman->save();

        // Jika status diterima, buat data angsuran
        if ($request->status === 'Diterima Ketua') {
            $nominalPinjaman = $pinjaman->nominal_pinjaman;
            $jmlAngsuran = $pinjaman->jml_angsuran;
            $jasa = $pinjaman->jasa; // misal: 0.02 untuk 2% per bulan

            // Hitung nominal angsuran pokok per bulan
            $angsuranPokok = $nominalPinjaman / $jmlAngsuran;

            // Hitung nominal jasa per bulan (bunga)
            $jasaNominal = $nominalPinjaman * $jasa;

            // Total nominal angsuran per bulan (pokok + jasa)
            $nominalAngsuran = $angsuranPokok + $jasaNominal;

            // Buat data angsuran sebanyak jumlah angsuran
            for ($i = 1; $i <= $jmlAngsuran; $i++) {
                Angsuran::create([
                    'pinjaman_id' => $pinjaman->id,
                    'anggota_id' => $pinjaman->anggota_id,
                    'angsuran_ke' => $i,
                    'nominal_angsuran' => $angsuranPokok,
                    'jasa' => $jasaNominal,
                    'nominal_bayar' => $nominalAngsuran,
                    'tgl_bayar' => null,
                    'tgl_input' => now(),
                    'total_pinjaman' => $nominalPinjaman,
                    'status_bayar' => '0', // 0 = belum bayar
                ]);
            }
        }

        // Redirect kembali dengan pesan sukses
        return redirect()->back()->with('success', 'Status pengajuan pinjaman berhasil diperbarui.');
    }
}
