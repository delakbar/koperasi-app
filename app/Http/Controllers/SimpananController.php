<?php

namespace App\Http\Controllers;

use App\Models\Simpanan;
use App\Models\Anggota;
use App\Models\jenis_simpanan;
use Illuminate\Http\Request;

class SimpananController extends Controller
{

    public function getDataSimpanan(Request $request)
    {
        // Server-side processing for DataTables
        $columns = [
            0 => 'id',
            1 => 'anggota_id',
            2 => 'nominal_simpanan',
            3 => 'jenis_simpanan',
            4 => 'tgl_simpan',
            5 => 'input_by',
            6 => 'tgl_input',
        ];

        $totalData = Simpanan::count();
        $totalFiltered = $totalData;

        $limit = $request->input('length', 10);
        $start = $request->input('start', 0);
        $orderColumnIndex = $request->input('order.0.column');
        $orderColumn = $columns[$orderColumnIndex] ?? 'id';
        $orderDir = $request->input('order.0.dir', 'desc');
        $search = $request->input('search.value');

        // Join dengan tabel anggota untuk mendapatkan nama anggota
        $query = Simpanan::with('anggota');

        if (!empty($search)) {
            $query->where(function ($q) use ($search) {
                $q->where('anggota_id', 'LIKE', "%{$search}%")
                  ->orWhere('jenis_simpanan', 'LIKE', "%{$search}%")
                  ->orWhere('tgl_simpan', 'LIKE', "%{$search}%")
                  ->orWhere('input_by', 'LIKE', "%{$search}%")
                  ->orWhere('tgl_input', 'LIKE', "%{$search}%");
            })
            // Cari juga berdasarkan nama anggota
            ->orWhereHas('anggota', function($q) use ($search) {
                $q->where('nama', 'LIKE', "%{$search}%");
            });
            $totalFiltered = $query->count();
        }

        $simpanan = $query
            ->offset($start)
            ->limit($limit)
            ->orderBy($orderColumn, $orderDir)
            ->get();

        $data = [];
        $no = $start + 1;
        foreach ($simpanan as $item) {
            $row = [];
            $row[] = $no++;
            $row[] = $item->anggota->nama ?? '-'; // tampilkan nama anggota
            $row[] = ucfirst($item->jenis_simpanan);
            $row[] = number_format($item->nominal_simpanan, 2);
            $row[] = $item->input_by;
            $row[] = $item->tgl_update;
            $data[] = $row;
        }

        return response()->json([
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        ]);
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       return view('simpanan.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $jenis_simpanan = jenis_simpanan::all();
        $anggotas = Anggota::all();
        return view('simpanan.create', compact('anggotas','jenis_simpanan'));
    }

    /**
     * Store a newly created resource in storage.
     */
public function store(Request $request)
{
    $request->validate([
        'anggota_id' => 'required',
        'jenis_simpanan' => 'required',
        'nominal_simpanan' => 'required|numeric',
    ]);

    $data = $request->all();
    // Ambil user id yang sedang login untuk kolom input_by
    $data['input_by'] = auth()->user()->id ?? null;

    Simpanan::create($data);
    return redirect()->route('simpanan.index')->with('success', 'Data simpanan berhasil disimpan.');
}

    /**
     * Display the specified resource.
     */
    public function show(Simpanan $simpanan)
    {
        return response()->json($simpanan);
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
    public function update(Request $request, Simpanan $simpanan)
    {
        $request->validate([
            'anggota_id' => 'required',
            'jenis_simpanan' => 'required',
            'nominal_simpanan' => 'required|numeric',
            'input_by' => 'required|date',
            'tgl_update' => 'nullable|date',
        ]);

        $simpanan->update($request->all());
        return response()->json($simpanan);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Simpanan $simpanan)
    {
        $simpanan->delete();
        return response()->json(null, 204);
    }
}
