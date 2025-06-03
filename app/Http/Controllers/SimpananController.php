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
        $columns = [
            0 => 'id',
            1 => 'anggota_id',
            2 => 'jenis_simpanan',
            3 => 'nominal_simpanan',
            4 => 'input_by',
            5 => 'tgl_update',
        ];

        $totalData = Simpanan::count();
        $totalFiltered = $totalData;

        $limit = $request->input('length', 10);
        $start = $request->input('start', 0);
        $orderColumnIndex = $request->input('order.0.column');
        $orderColumn = $columns[$orderColumnIndex] ?? 'id';
        $orderDir = $request->input('order.0.dir', 'desc');
        $search = $request->input('search.value');

        // Query dengan relasi anggota
        $query = Simpanan::with('anggota');

        // Filter berdasarkan input filter
        if ($request->filled('filter_nama_anggota')) {
            $query->whereHas('anggota', function($q) use ($request) {
                $q->where('nama', 'like', '%' . $request->filter_nama_anggota . '%');
            });
        }

        if ($request->filled('filter_jenis_simpanan')) {
            $query->where('jenis_simpanan', $request->filter_jenis_simpanan);
        }

        if ($request->filled('filter_tgl_pinjam1') && $request->filled('filter_tgl_pinjam2')) {
            $query->whereBetween('tgl_update', [$request->filter_tgl_pinjam1, $request->filter_tgl_pinjam2]);
        }

        if (!empty($search)) {
            $query->where(function ($q) use ($search) {
                $q->where('jenis_simpanan', 'LIKE', "%{$search}%")
                ->orWhereHas('anggota', function($q2) use ($search) {
                    $q2->where('nama', 'LIKE', "%{$search}%");
                });
            });
        }

        $totalFiltered = $query->count();

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
            $row[] = $item->anggota->nama ?? '-';
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
       $anggota = Anggota::select('id','nama')->get();
       $jenis_simpanan = Jenis_simpanan::all();
       return view('simpanan.index',compact('anggota','jenis_simpanan'));
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
