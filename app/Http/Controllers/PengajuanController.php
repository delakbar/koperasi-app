<?php

namespace App\Http\Controllers;

use App\Models\Jasa;
use App\Models\Anggota;
use App\Models\Provisi;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use App\Models\Simpanan;
use Illuminate\Http\Request;
use App\Models\jenis_pinjaman;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class PengajuanController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $anggota = Anggota::findOrFail($id);

        $datasimpanan = DB::table('simpanan')
            ->select('jenis_simpanan', DB::raw('SUM(nominal_simpanan) as nominal_simpanan'))
            ->where('anggota_id', $anggota->id)
            ->groupBy('jenis_simpanan')
            ->get();

        $datapinjaman = DB::table('pinjaman')
            ->join('angsuran', 'pinjaman.id', '=', 'angsuran.pinjaman_id')
            ->select('pinjaman.jenis_pinjaman', DB::raw('SUM(angsuran.nominal_angsuran) as nominal_pinjaman'))
            ->where('angsuran.anggota_id', $anggota->id)
            ->where('angsuran.status_bayar', '0')
            ->groupBy('pinjaman.jenis_pinjaman')
            ->get();

        // Ambil 3 simpanan terbaru
        $topSimpanan = Simpanan::where('anggota_id', $anggota->id)
            ->orderBy('tgl_update', 'desc')
            ->limit(3)
            ->get();

        // Ambil 3 pinjaman terbaru
        $topPinjaman = Pinjaman::where('anggota_id', $anggota->id)
            ->orderBy('tgl_input', 'desc')
            ->limit(3)
            ->get();

        // Kirim data ke view
        return view('anggota.anggota', [
            'detail' => $anggota,
            'datasimpanan' => $datasimpanan, 
            'total_simpanan' => $datasimpanan->sum('nominal_simpanan'),
            'datapinjaman' => $datapinjaman, 
            'total_pinjaman' => $datapinjaman->sum('nominal_pinjaman'),
            'anggota' => $anggota,
            'topSimpanan' => $topSimpanan,
            'topPinjaman' => $topPinjaman
        ]);
    }

    public function create()
    {
        $jenis_pinjaman = jenis_pinjaman::all();
        $user = Auth::user();
    
        return view('pinjaman.pengajuan',compact('jenis_pinjaman','user'));
    }
    public function store(Request $request)
    {
    $user = Auth::user();

    $validated = $request->validate([
        'nominal_pinjaman' => 'required|numeric',
        'jenis_pinjaman' => 'required|string',
        'tgl_pinjam' => 'required|date',
        'jml_angsuran' => 'required|integer',
        'tgl_input' => 'nullable|date',
    ]);

    $validated['anggota_id'] = $user->id;
    $validated['input_by'] = $user->username;

    $provisiRecord = Provisi::first()->provisi ?? 0;
    $provisiNominal = $validated['nominal_pinjaman'] * $provisiRecord;

    $pinjaman = Pinjaman::create(array_merge($validated, [
        'rate' => $provisiRecord,
        'provisi' => $provisiNominal,
        'status' => 'Pengajuan',
        'tgl_input' => $validated['tgl_input'] ?? now(),
    ]));

    return redirect()->route('pengajuan.index')->with('success', 'Pinjaman berhasil diajukan!');
    }

    
}
