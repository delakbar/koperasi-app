<?php

namespace App\Http\Controllers;

use App\Models\Angsuran;
use App\Models\Pinjaman;
use Illuminate\Http\Request;
use App\Models\PengajuanSukarela;
use App\Models\Provisi;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class AdminPinjamanController extends Controller
{
    public function index()
    {
        $pinjamanPengajuan = Pinjaman::with('anggota')
        ->where('status', '=', 'Pengajuan')
        ->orderBy('tgl_input', 'desc')
        ->get();

        $simpananPengajuan = PengajuanSukarela::with('anggota')
        ->where('status', '=', 'Pengajuan')
        ->orderBy('tgl_update', 'desc')
        ->get();
  
        return view('pinjaman.cekpengajuan', compact('pinjamanPengajuan', 'simpananPengajuan'));
        }

    public function updateStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|string',
            'keterangan' => 'nullable|string',
        ]);

        $pinjaman = Pinjaman::findOrFail($id);
        $pinjaman->status = $request->status;

        if (strpos($request->status, 'Ditolak') !== false) {
            $pinjaman->keterangan = $request->keterangan;
        } else {
            $pinjaman->keterangan = null;
        }

        $pinjaman->save();

        return redirect()->back()->with('success', 'Status pengajuan pinjaman berhasil diperbarui.');
    }
   
    public function updateSimpananStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|string',
            'keterangan' => 'nullable|string',
        ]);

        $simpanan = PengajuanSukarela::findOrFail($id);
        $simpanan->status = $request->status;

        if (strpos($request->status, 'Ditolak') !== false) {
            $simpanan->keterangan = $request->keterangan;
        } else {
            $simpanan->keterangan = null;
        }

        $simpanan->save();

        return redirect()->back()->with('success', 'Status pengajuan simpanan berhasil diperbarui.');
    }

    public function formTopup($id)
    {
        $pinjaman = Pinjaman::findOrFail($id);
        $provisi = Provisi::first();
        // dd($provisi);
        // Hitung sisa angsuran yang belum lunas
        $sisaNominalBelumLunas = Angsuran::where('pinjaman_id', $id)
            ->where('status_bayar', '0')
            ->sum('nominal_angsuran');
        // dd($sisaNominalBelumLunas);

        return view('pinjaman.topup', compact('pinjaman', 'sisaNominalBelumLunas','provisi'));

        // dd($sisaNominalBelumLunas);
    }

    public function prosesTopup(Request $request, $id)
    {
        $validated = $request->validate([
            'nominal' => 'required|numeric',
            'jumlah_angsuran' => 'required|integer|min:1',
        ]);

        $provisi = Provisi::first();
        $rateProvisi = $provisi->provisi;
        $nominalProvisi = floor($validated['nominal'] * $rateProvisi);

        DB::beginTransaction();
        try {
            // 1. Temukan pinjaman lama dan lunasi angsuran
            $pinjamanLama = Pinjaman::findOrFail($id);
            Angsuran::where('pinjaman_id', $id)
                ->where('status_bayar', '0')
                ->update(['status_bayar' => '1']);

            // 2. Buat pinjaman baru
            $pinjamanBaru = Pinjaman::create([
                'anggota_id' => $pinjamanLama->anggota_id,
                'nominal_pinjaman' => $validated['nominal'],
                'jenis_pinjaman' => $pinjamanLama->jenis_pinjaman,
                'tgl_pinjam' => now(),
                'jml_angsuran' => $validated['jumlah_angsuran'],
                'input_by' => auth()->user()->role ?? 'admin',
                'tgl_input' => now(),
                'rate' => $rateProvisi,
                'provisi' => $nominalProvisi,
                'keterangan' => 'Topup dari pinjaman ID: ' . $pinjamanLama->id,
                'status' => 'Pengajuan',
            ]);

            // 3. Buat angsuran baru
            $nominalPerAngsuran = floor($validated['nominal'] / $validated['jumlah_angsuran']);
            for ($i = 1; $i <= $validated['jumlah_angsuran']; $i++) {
                Angsuran::create([
                    'anggota_id' => $pinjamanLama->anggota_id,
                    'pinjaman_id' => $pinjamanBaru->id,
                    'angsuran_ke' => $i,
                    'nominal_angsuran' => $nominalPerAngsuran,
                    'nominal_jasa' => $validated['nominal'] * $rateProvisi,
                    'nominal_bayar' => $nominalPerAngsuran,
                    'status_bayar' => '0',
                    'total_pinjaman' => $validated['nominal'],
                ]);
            }

            DB::commit();
            return redirect()->route('pinjaman.index')->with('success', 'Topup berhasil diajukan.');
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Gagal melakukan topup: ' . $e->getMessage());
        }
    }
}
