<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Jasa;
use App\Models\Provisi;
use App\Models\Pengeluaran;
use Illuminate\Http\Request;
use App\Models\Jenis_Pinjaman;
use App\Models\Jenis_Simpanan;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ControlpanelController extends Controller
{
    // Tampilkan semua data dalam satu halaman
    public function index()
    {
        $jenisSimpanan = Jenis_simpanan::all();
        $jenisPinjaman = Jenis_Pinjaman::all();
        $jasa = Jasa::all();
        $provisi = Provisi::all();
        $pengeluaran = Pengeluaran::all();

        return view('controlpanel.index', compact('jenisSimpanan', 'jenisPinjaman', 'jasa', 'provisi', 'pengeluaran'));
    }

    // Update data jenis simpanan
    public function updateJenisSimpanan(Request $request, $id)
    {
        $validated = $request->validate([
            'jenis' => 'required|string|max:255',
        ]);

        $item = Jenis_Simpanan::findOrFail($id);
        $item->update([
        'jenis' => $validated['jenis'],
    ]);

        // Redirect dengan pesan sukses
        return redirect()->route('controlpanel.index')->with('success', 'Jenis Simpanan berhasil diperbarui.');
    }

    // Update data jenis pinjaman
    public function updateJenisPinjaman(Request $request, $id)
    {
        $validated = $request->validate([
             'jenis' => 'required|string|max:255',
        ]);

        $item = Jenis_pinjaman::findOrFail($id);
        $item->update([
        'jenis' => $validated['jenis'],
        ]);

        // Redirect dengan pesan sukses
        return redirect()->route('controlpanel.index')->with('success', 'Jenis Simpanan berhasil diperbarui.');
    }

    // Update data jasa
    public function updateJasa(Request $request, $jasaValue)
    {
        $user = auth()->user();

        // Validasi input
        $validated = $request->validate([
            'jasa' => 'required|string|max:255',
        ]);

        // Update data jasa berdasarkan kolom 'jasa' (atau kolom lain yang unik)
        $updated = DB::table('jasa')
            ->where('jasa', $jasaValue) // gunakan parameter yang sesuai
            ->update([
                'jasa' => $validated['jasa'],
                'input_by' => $user->username,
                'tgl_update' => Carbon::now(),
            ]);

        if ($updated) {
            return redirect()->route('controlpanel.index')->with('success', 'Data jasa berhasil diperbarui.');
        } else {
            return redirect()->back()->with('error', 'Data jasa tidak ditemukan atau gagal diperbarui.');
        }
    }

    // Update data provisi
    public function updateProvisi(Request $request, $provisivalue)
    {
         $user = auth()->user();
        // Validasi input
        $validated = $request->validate([
            'provisi' => 'required',
        ]);

        // Update data jasa berdasarkan kolom 'jasa' (atau kolom lain yang unik)
        $updated = DB::table('provisi')
            ->where('provisi', $provisivalue) // gunakan parameter yang sesuai
            ->update([
                'provisi' => $validated['provisi'],
                'input_by' => $user->username,
                'tgl_update' => Carbon::now(),
            ]);

        if ($updated) {
            return redirect()->route('controlpanel.index')->with('success', 'Data provisi berhasil diperbarui.');
        } else {
            return redirect()->back()->with('error', 'Data jasa tidak ditemukan atau gagal diperbarui.');
        }
    }

    public function savePengeluaran(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'insert' => 'array',
            'insert.*.jenis_pengeluaran' => 'required|string|max:255',
            'insert.*.rate_pengeluaran' => 'required|numeric|min:0',
            
            'update' => 'array',
            'update.*.id' => 'required|integer|exists:pengeluaran,id',
            'update.*.jenis_pengeluaran' => 'required|string|max:255',
            'update.*.rate_pengeluaran' => 'required|numeric|min:0',

            'delete' => 'array',
            'delete.*' => 'required|integer|exists:pengeluaran,id',
        ], [
            'insert.*.rate_pengeluaran.required' => 'Rate pengeluaran wajib diisi',
            'insert.*.rate_pengeluaran.numeric' => 'Rate pengeluaran harus berupa angka',
            'update.*.rate_pengeluaran.required' => 'Rate pengeluaran wajib diisi',
            'update.*.rate_pengeluaran.numeric' => 'Rate pengeluaran harus berupa angka',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validasi gagal',
                'errors' => $validator->errors()
            ], 422);
        }

        $data = $validator->validated();
        $user = auth()->user();

        try {
            // Proses INSERT
            if (!empty($data['insert'])) {
                foreach ($data['insert'] as $item) {
                    Pengeluaran::create([
                        'jenis_pengeluaran' => $item['jenis_pengeluaran'],
                        'rate_pengeluaran' => $item['rate_pengeluaran'],
                        'input_by' => $user->nama,
                        'tgl_input' => now()->format('Y-m-d H:i:s'),
                    ]);
                }
            }

            // Proses UPDATE
            if (!empty($data['update'])) {
                foreach ($data['update'] as $item) {
                    $pengeluaran = Pengeluaran::find($item['id']);
                    if ($pengeluaran) {
                        $pengeluaran->update([
                            'jenis_pengeluaran' => $item['jenis_pengeluaran'],
                            'rate_pengeluaran' => $item['rate_pengeluaran'],
                            'input_by' => $user->nama,
                            'tgl_input' => now()->format('Y-m-d H:i:s'),
                        ]);
                    }
                }
            }

            // Proses DELETE
            if (!empty($data['delete'])) {
                Pengeluaran::whereIn('id', $data['delete'])->delete();
            }

            return response()->json(['success' => true]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Terjadi kesalahan server',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
