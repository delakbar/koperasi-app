<?php

namespace App\Http\Controllers;

use App\Models\Anggota;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use App\Models\Simpanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AnggotaController extends Controller
{
    
    public function getData(Request $request)
    {
        $columns = ['id', 'nama','username','jabatan', 'no_hp'];

        $length = $request->input('length');
        $start = $request->input('start');
        $orderColumnIndex = $request->input('order.0.column');
        $order = $columns[$orderColumnIndex] ?? 'id';
        $dir = $request->input('order.0.dir', 'asc');
        $search = $request->input('search.value');

        $query = Anggota::select('id', 'nama','username','jabatan', 'no_hp');
        
        if (!empty($search)) {
            $query->where(function($q) use ($search) {
                $q->where('nama', 'like', "%{$search}%")
                ->orWhere('username', 'like', "%{$search}%");
            });
        }

        $totalData = Anggota::count();
        $totalFiltered = $query->count();

        $data = $query->orderBy($order, $dir)
                    ->offset($start)
                    ->limit($length)
                    ->get();

        $json_data = [
            "draw" => intval($request->input('draw')),
            "recordsTotal" => $totalData,
            "recordsFiltered" => $totalFiltered,
            "data" => []
        ];

        foreach ($data as $index => $item) {
            $aksi = '
                <a href="'.route('anggota.show', $item->id).'" class="btn btn-info btn-sm">Detail</a>
                <a href="'.route('anggota.edit', $item->id).'" class="btn btn-warning btn-sm">Edit</a>
                <button class="btn btn-danger btn-sm btn-hapus" data-id="'.$item->id.'">Hapus</button>
            ';

            $json_data['data'][] = [
                $start + $index + 1,
                $item->nama,
                $item->username,
                $item->jabatan,
                $item->no_hp,
                $aksi
            ];
        }

        return response()->json($json_data);
    }


    public function index()
    {
        return view('anggota.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()

    {
        return view('anggota.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|unique:anggota',
            'nama' => 'required',
            'jabatan' => 'required',
            'no_hp' => 'required',
            'role' => 'required',
        ]);

        $data = $request->all();
        $data['password'] = Hash::make('password');
        $data['is_active'] = 1;

        $anggota = Anggota::create($data);
        if($anggota){
        return redirect()->route('anggota.index')->with('success', 'Anggota berhasil ditambahkan.');
        } else {
            return redirect()->route('anggota.index')->with('error', 'Anggota gagal ditambahkan.');
        }
    }
    public function show($id)
    {
        // Ambil data anggota
        $anggota = Anggota::findOrFail($id);

        // Ambil total simpanan per jenis
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
        return view('anggota.detail', [
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

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('anggota.edit', [
            'anggota' => Anggota::findOrFail($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Validasi input
        $validatedData = $request->validate([
            'nama' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:anggota,username,' . $id,
            'jabatan' => 'required|string|max:255',
            'no_hp' => 'required|string|max:20',
            'role' => 'required|in:anggota,admin',
        ]);

        // Cari data anggota berdasarkan id
        $anggota = Anggota::findOrFail($id);

        // Update data anggota
        $anggota->nama = $validatedData['nama'];
        $anggota->username = $validatedData['username'];
        $anggota->jabatan = $validatedData['jabatan'];
        $anggota->no_hp = $validatedData['no_hp'];
        $anggota->role = $validatedData['role'];
        $anggota->save();

        // Redirect dengan pesan sukses
        return redirect()->route('anggota.index')->with('success', 'Data anggota berhasil diperbarui.');
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Anggota $anggota)
    {
        $anggota->delete();
        return response()->json(null, 204);
    }
    public function updateStatus(Request $request, $id)
    {
        $anggota = Anggota::find($id);

        if (!$anggota) {
            return response()->json(['success' => false, 'message' => 'Anggota tidak ditemukan.'], 404);
        }


        $hasUnpaidInstallments = Angsuran::where('anggota_id', $id)
        ->where('status_bayar', '0')
        ->exists();

        if ($hasUnpaidInstallments) {
            return response()->json([
                'success' => false,
                'message' => 'Tidak bisa menonaktifkan anggota karena masih ada pinjaman atau angsuran yang belum terbayarkan.'
            ], 400);
        }

        // Update hanya kolom is_active
        $anggota->is_active = 0;

        if ($anggota->save()) {
            return response()->json(['success' => true, 'message' => 'Anggota berhasil dinonaktifkan.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Gagal menonaktifkan anggota.'], 500);
        }
    }

}
