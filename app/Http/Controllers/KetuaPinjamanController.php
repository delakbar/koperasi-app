<?php

namespace App\Http\Controllers;

use App\Models\Jasa;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use App\Models\Simpanan;
use Illuminate\Http\Request;
use App\Models\PengajuanSukarela;

class KetuaPinjamanController extends Controller
{
    public function index()
    {
        $pinjamanPengajuan = Pinjaman::with('anggota')
            ->orderBy('tgl_input', 'desc')
            ->get();

        $simpananPengajuan = PengajuanSukarela::with('anggota')
            ->orderBy('tgl_update', 'desc')
            ->get();

        return view('pinjaman.cekpinjaman', compact('pinjamanPengajuan', 'simpananPengajuan'));
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
        if ($request->status === 'Disetujui Ketua') {
            $nominalPinjaman = $pinjaman->nominal_pinjaman;
            $jmlAngsuran = $pinjaman->jml_angsuran;
            $jasa = Jasa::first()->jasa;
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
                    'jasa' => $jasa,
                    'nominal_jasa' => $jasaNominal,
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
    public function updateSimpananStatus(Request $request, $id)
    {
        // Validasi input
        $request->validate([
            'status' => 'required|string',
            'keterangan' => 'nullable|string',
        ]);

        // Ambil data pengajuan
        $pengajuan = PengajuanSukarela::findOrFail($id);

        // Update status
        $pengajuan->status = $request->status;

        // Simpan keterangan jika ditolak
        if (str_contains($request->status, 'Ditolak')) {
            $pengajuan->keterangan = $request->keterangan;
        } else {
            $pengajuan->keterangan = null;
        }

        $pengajuan->save();

        // Jika disetujui oleh ketua, salin semua data ke tabel simpanan
        if ($request->status === 'Disetujui Ketua') {
            $data = $pengajuan->toArray();     // Ambil semua kolom pengajuan
            unset($data['id']);                // Hapus kolom ID agar tidak bentrok dengan auto-increment
            $data['keterangan'] = 'Pengajuan'; // Opsi: bisa tambahkan keterangan khusus
            $data['tgl_update'] = now();       // Update waktu input saat disalin

            Simpanan::create($data);
        }

        return redirect()->back()->with('success', 'Status simpanan berhasil diperbarui oleh Ketua.');
    }
}
