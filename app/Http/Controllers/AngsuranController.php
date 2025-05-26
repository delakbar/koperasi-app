<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Jasa;
use App\Models\Anggota;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use Illuminate\Http\Request;

use App\Models\jenis_pinjaman;
use Illuminate\Support\Facades\Log;

class AngsuranController extends Controller
{
public function index()
{
    $anggota = Anggota::select('id', 'nama')->distinct()->get();
    $pinjaman = Pinjaman::select('id', 'jenis_pinjaman')->distinct()->get();
    $jenis_pinjaman = jenis_pinjaman::all();
    
    return view('angsuran.index', compact('anggota', 'pinjaman','jenis_pinjaman'));
}



public function getDataAngsuran(Request $request)
{
    $draw = $request->input('draw');
    $start = $request->input('start');
    $length = $request->input('length');
    $search = $request->input('search.value');
    $orderColumn = $request->input('order.0.column');
    $orderDir = $request->input('order.0.dir');

    $columns = [
        0 => 'angsuran.id',
        1 => 'anggota.nama',
        2 => 'pinjaman.jenis_pinjaman',
        3 => 'angsuran.angsuran_ke',
        4 => 'angsuran.nominal_angsuran',
        5 => 'angsuran.total_pinjaman',
        6 => 'angsuran.tgl_bayar',
        7 => 'angsuran.tgl_input',
    ];

    $baseQuery = Angsuran::select([
            'angsuran.id',
            'angsuran.pinjaman_id',
            'angsuran.anggota_id',
            'angsuran.angsuran_ke',
            'angsuran.nominal_angsuran',
            'angsuran.total_pinjaman',
            'angsuran.tgl_bayar',
            'angsuran.jasa',
            'angsuran.nominal_bayar',
            'angsuran.tgl_input',
            'angsuran.status_bayar',
            'anggota.nama as nama_anggota',
            'pinjaman.jenis_pinjaman'
        ])
        ->leftJoin('anggota', 'anggota.id', '=', 'angsuran.anggota_id')
        ->leftJoin('pinjaman', 'pinjaman.id', '=', 'angsuran.pinjaman_id')
        ->orderBy('angsuran.id', 'desc');

        $totalRecords = $baseQuery->count(); // total data sebelum filter

        // Terapkan filter
        if (!empty($request->nama_anggota)) {
            $baseQuery->where('anggota.nama', 'like', '%' . $request->nama_anggota . '%');
        }

        if (!empty($request->jenis_pinjaman)) {
            $baseQuery->where('pinjaman.jenis_pinjaman', 'like', '%' . $request->jenis_pinjaman . '%');
        }

        if (!empty($request->tgl_pinjam1)) {
            $baseQuery->whereDate('angsuran.tgl_bayar', '>=', $request->tgl_pinjam1);
        }

        if (!empty($request->tgl_pinjam2)) {
            $baseQuery->whereDate('angsuran.tgl_bayar', '<=', $request->tgl_pinjam2);
        }

        if (!empty($search)) {
            $baseQuery->where(function($q) use ($search) {
                $q->where('anggota.nama', 'like', '%' . $search . '%')
                ->orWhere('pinjaman.jenis_pinjaman', 'like', '%' . $search . '%')
                ->orWhere('angsuran.angsuran_ke', 'like', '%' . $search . '%')
                ->orWhere('angsuran.nominal_angsuran', 'like', '%' . $search . '%');
            });
        }

        $filteredRecords = $baseQuery->count(); // total data setelah filter

        // Ordering
        if (isset($columns[$orderColumn])) {
            $baseQuery->orderBy($columns[$orderColumn], $orderDir);
        } else {
            $baseQuery->orderBy('angsuran.id', 'desc');
        }

        // Pagination
        if ($length != -1) {
            $baseQuery->skip($start)->take($length);
        }

        $angsurans = $baseQuery->get();

        $data = [];
        foreach ($angsurans as $index => $angsuran) {
            $data[] = [
                'nama_anggota' => $angsuran->nama_anggota,
                'jenis_pinjaman' => $angsuran->jenis_pinjaman,
                'angsuran_ke' => $angsuran->angsuran_ke,
                'nominal_angsuran' => $angsuran->nominal_angsuran,
                'total_pinjaman' => $angsuran->total_pinjaman,
                'jasa' => $angsuran->jasa,
                'nominal_bayar' => $angsuran->nominal_bayar,
                'tgl_bayar' => $angsuran->tgl_bayar,
                'tgl_input' => $angsuran->tgl_input, 
                'status_bayar' => $angsuran->status_bayar,
                'id' => $angsuran->id, // Pastikan id ikut dikirim
                'action' => $angsuran->status_bayar == 1 
                    ? '<button class="btn btn-sm btn-secondary" disabled>Sudah Dibayar</button>'
                    : '<button class="btn btn-sm btn-primary btn-bayar" data-id="'.$angsuran->id.'" data-nominal="'.$angsuran->nominal_angsuran.'">Bayar</button>'
            ];
        }

        return response()->json([
            'draw' => intval($draw),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $filteredRecords,
            'data' => $data
        ]);
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('angsuran.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'pinjaman_id' => 'required',
            'angsuran_ke' => 'required|integer',
            'nominal_angsuran' => 'required|numeric',
            'total_pinjaman' => 'required|integer',
            'tgl_bayar' => 'required|date',
            'tgl_input' => 'nullable|date',
        ]);

        $angsuran = Angsuran::create($request->all());
        return response()->json($angsuran, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Angsuran $angsuran)
    {
        return response()->json($angsuran);
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
    public function update(Request $request, $id)
    {
        $request->validate([
           'total_bayar' => 'required',
        ]);

        $angsuran = Angsuran::findOrFail($id);

        $data = $request->all();
        $data['tgl_bayar'] = now();
        $data['status_bayar'] = '1'; 
        Log::info('Data update angsuran:', $data);
        $angsuran->update($data);

        if ($angsuran) {
            return redirect()->route('angsuran.index')->with('success', 'Angsuran berhasil dibayar.');
        } else {
            return redirect()->route('angsuran.index')->with('error', 'Gagal membayar angsuran.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Angsuran $angsuran)
    {
        $angsuran->delete();
        return response()->json(null, 204);
    }
    public function pelunasan(Request $request)
    {
        $pinjamanId = $request->input('pinjaman_id');
        $totalBayar = $request->input('total_bayar_pelunasan');

        // Logika untuk update semua angsuran yang belum dibayar pada pinjaman ini menjadi lunas
        // Contoh:
        Angsuran::where('pinjaman_id', $pinjamanId)
            ->where('status_bayar', '!=', 1)
            ->update([
                'status_bayar' => 1,
                'tgl_bayar' => now(),
                'total_bayar' => $totalBayar,
            ]);

        return response()->json(['message' => 'Pelunasan berhasil']);
    }

    public function getJasa()
    {
        $jasa = Jasa::select('jasa', 'jasa')->get();
        return response()->json($jasa);
    }

}
