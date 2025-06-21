<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pinjaman;

class AdminPinjamanController extends Controller
{
    public function index()
    {
        $pinjamanPengajuan = Pinjaman::with('anggota')

            ->orderBy('tgl_input', 'desc')
            ->get();

        return view('pinjaman.cekpengajuan', compact('pinjamanPengajuan'));
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
    
}
