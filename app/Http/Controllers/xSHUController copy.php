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

        // Hitung SHU bersih dan SHU anggota
        $shuBersih = $totalJasaPinjaman - $totalPengeluaran;
        $shuBersihAnggota = 0.8 * $shuBersih;
        
        $denominator = ($totalSimpanan * 4) + ($totalPinjaman * 6);
        if ($denominator == 0) {
            return redirect()->back()->with('error', 'Tidak dapat menghitung SHU karena total simpanan dan pinjaman = 0');
        }
        
        $shuPer1000 = ($shuBersihAnggota / $denominator) ;
        $pengkaliSimpanan = $shuPer1000 * 4;
        $pengkaliPinjaman = $shuPer1000 * 6;
        
        // Ambil ID anggota dari simpanan dan pinjaman
        $anggotaSimpanan = DB::table('simpanan')
            ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_update', [$startDate, $endDate]))
            ->pluck('anggota_id');
        
        $anggotaPinjaman = DB::table('pinjaman')
            ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_pinjam', [$startDate, $endDate]))
            ->pluck('anggota_id');
        
        $anggotaIds = $anggotaSimpanan->merge($anggotaPinjaman)->unique();
        
        // Kosongkan data lama
        ShuAnggota::truncate();
        
        // Hitung dan simpan SHU per anggota
        foreach ($anggotaIds as $anggotaId) {
            $totalSimpananAnggota = DB::table('simpanan')
                ->where('anggota_id', $anggotaId)
                ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_update', [$startDate, $endDate]))
                ->sum('nominal_simpanan');
            
            $totalPinjamanAnggota = DB::table('pinjaman')
                ->where('anggota_id', $anggotaId)
                ->when($startDate && $endDate, fn($q) => $q->whereBetween('tgl_pinjam', [$startDate, $endDate]))
                ->sum('nominal_pinjaman');
            
            $shuSimpanan = $totalSimpananAnggota * $pengkaliSimpanan;
            $shuPinjaman = $totalPinjamanAnggota * $pengkaliPinjaman;
            $totalShu = $shuSimpanan + $shuPinjaman;
            
            ShuAnggota::create([
                'anggota_id' => $anggotaId,
                'shu_simpanan' => $shuSimpanan,
                'shu_pinjaman' => $shuPinjaman,
                'total_shu' => $totalShu
            ]);
        }
        
        return redirect()->route('shu.index', [
            'start_date' => $startDate,
            'end_date' => $endDate
        ])->with('success', 'SHU berhasil dihitung!');
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

    /**
     * Method untuk mengambil data SHU dalam format JSON (misal untuk AJAX)
     */
    public function getShuData(Request $request)
    {
        $startDate = $request->start_date;
        $endDate = $request->end_date;

        $query = DB::table('shu_anggota')
            ->join('anggota', 'shu_anggota.anggota_id', '=', 'anggota.id')
            ->select('anggota.nama', 'shu_anggota.shu_simpanan', 'shu_anggota.shu_pinjaman', 'shu_anggota.total_shu');

        $shus = $query->get();

        return response()->json(['data' => $shus]);
    }
}
