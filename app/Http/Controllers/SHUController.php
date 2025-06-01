<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\ShuAnggota;

class SHUController extends Controller
{
    /**
     * Hitung SHU berdasarkan tanggal dan simpan ke tabel shu_anggota
     */
    public function hitungSHU(Request $request)
    {
        $startDate = $request->start_date;
        $endDate = $request->end_date;

        // Query dasar
        $queryAngsuran = DB::table('angsuran');
        $querySimpanan = DB::table('simpanan');
        $queryPinjaman = DB::table('pinjaman');
        $queryPengeluaran = DB::table('pengeluaran');
        
        // Filter tanggal jika ada
        if ($startDate && $endDate) {
            $queryAngsuran->whereBetween('tgl_input', [$startDate, $endDate]);
            $querySimpanan->whereBetween('tgl_update', [$startDate, $endDate]);
            $queryPinjaman->whereBetween('tgl_pinjam', [$startDate, $endDate]);
        }

        // Hitung total
        $totalJasaPinjaman = $queryAngsuran->sum('nominal_jasa');
        $totalSimpanan = $querySimpanan->sum('nominal_simpanan');
        $totalPinjaman = $queryPinjaman->sum('nominal_pinjaman');
        $totalRatePengeluaran = $queryPengeluaran->sum('rate_pengeluaran');
        $totalPengeluaran = $totalJasaPinjaman * $totalRatePengeluaran;

        $shuBersih = $totalJasaPinjaman - $totalPengeluaran;
        $shuBersihAnggota = 0.8 * $shuBersih;

        $denominator = ($totalSimpanan * 4) + ($totalPinjaman * 6);
        if ($denominator == 0) {
            return response()->json(['status' => 'error', 'message' => 'Tidak dapat menghitung SHU karena total simpanan dan pinjaman = 0'], 400);
        }

        $shuPer1000 = ($shuBersihAnggota / $denominator) * 1000;
        $pengkaliSimpanan = $shuPer1000 * 4;
        $pengkaliPinjaman = $shuPer1000 * 6;

        $anggotaSimpanan = DB::table('simpanan')
            ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_update', [$startDate, $endDate]))
            ->pluck('anggota_id');

        $anggotaPinjaman = DB::table('pinjaman')
            ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_pinjam', [$startDate, $endDate]))
            ->pluck('anggota_id');

        $anggotaIds = $anggotaSimpanan->merge($anggotaPinjaman)->unique();

        // Kosongkan data lama
        ShuAnggota::truncate();

        foreach ($anggotaIds as $anggotaId) {
            $totalSimpananAnggota = DB::table('simpanan')
                ->where('anggota_id', $anggotaId)
                ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_update', [$startDate, $endDate]))
                ->sum('nominal_simpanan');

            $totalPinjamanAnggota = DB::table('pinjaman')
                ->where('anggota_id', $anggotaId)
                ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_pinjam', [$startDate, $endDate]))
                ->sum('nominal_pinjaman');

            $shuSimpanan = ($totalSimpananAnggota * $pengkaliSimpanan) / 1000;
            $shuPinjaman = ($totalPinjamanAnggota * $pengkaliPinjaman) / 1000;
            $totalShu = $shuSimpanan + $shuPinjaman;

            ShuAnggota::create([
                'anggota_id' => $anggotaId,
                'shu_simpanan' => $shuSimpanan,
                'shu_pinjaman' => $shuPinjaman,
                'total_simpanan' => $totalSimpananAnggota,
                'total_pinjaman' => $totalPinjamanAnggota,
                'total_shu' => $totalShu,
                'pengkalisimpanan' => $pengkaliSimpanan,
                'pengkalipinjaman' => $pengkaliPinjaman,
                'shuper1000' => $shuPer1000,
            ]);
        }

        return response()->json([
            'status' => 'success',
            'message' => 'SHU berhasil dihitung!',
            'data' => [
                'total_simpanan' => $totalSimpanan,
                'total_pinjaman' => $totalPinjaman,
                'shu_bersih' => $shuBersih,
                'shu_anggota' => $shuBersihAnggota,
                'pengkalisimpanan' => $pengkaliSimpanan,
                'pengkalipinjaman' => $pengkaliPinjaman,
            ]
        ]);
    }

    /**
     * Tampilkan halaman index SHU
     */
    public function index(Request $request)
    {
        $shus = DB::table('shu_anggota')
            ->join('anggota', 'shu_anggota.anggota_id', '=', 'anggota.id')
            ->select('anggota.nama', 'shu_anggota.*')
            ->get();


        return view('shu.index', [
            'shus' => $shus,
            'start_date' => $request->start_date,
            'end_date' => $request->end_date
        ]);
    }
    public function getData(Request $request)
    {
            $data = DB::table('shu_anggota')
            ->join('anggota', 'shu_anggota.anggota_id', '=', 'anggota.id')
            ->select(
                'anggota.nama',
                'shu_anggota.shu_simpanan',
                'shu_anggota.shu_pinjaman',
                'shu_anggota.total_shu',
                'pengkalisimpanan',
                'pengkalipinjaman',
                'total_simpanan',
                'total_pinjaman'
            )
            ->get();

        return response()->json($data);
    }
}
