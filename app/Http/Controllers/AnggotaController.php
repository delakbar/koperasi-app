<?php

namespace App\Http\Controllers;

use App\Models\Anggota;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use App\Models\Simpanan;
use Illuminate\Http\Request;
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
                <form action="'.route('anggota.destroy', $item->id).'" method="POST" style="display:inline;">
                    '.csrf_field().'
                    '.method_field('DELETE').'
                    <button class="btn btn-danger btn-sm" onclick="return confirm(\'Yakin hapus?\')">Hapus</button>
                </form>
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

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Ambil data anggota berdasarkan id
        $anggota = Anggota::findOrFail($id);

        // Ambil data simpanan dan pinjaman berdasarkan anggota
        $simpanan = Simpanan::where('anggota_id', $anggota->id)->sum('nominal_simpanan');
        $pinjaman = Angsuran::where('anggota_id', $anggota->id)
            ->where('status_bayar', '0')
            ->sum('nominal_angsuran');

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

        return view('anggota.detail', [
            'detail' => $anggota,
            'simpanan' => $simpanan,
            'pinjaman' => $pinjaman,
            'topSimpanan' => $topSimpanan,
            'topPinjaman' => $topPinjaman
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Anggota $anggota)
    {
        $request->validate([
            'username' => 'required|unique:anggota,username,' . $anggota->id,
            'password' => 'required',
            'nama' => 'required',
            'jabatan' => 'required',
            'no_hp' => 'required',
            'role' => 'required',
            'is_active' => 'required',
        ]);

        $anggota->update($request->all());
        return response()->json($anggota);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Anggota $anggota)
    {
        $anggota->delete();
        return response()->json(null, 204);
    }
}
