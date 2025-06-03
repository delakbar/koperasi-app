<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Anggota;
use App\Models\Provisi;
use App\Models\Jasa;
use App\Models\Angsuran;
use App\Models\Pinjaman;
use App\Models\Administrasi;
use App\Models\jenis_pinjaman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PinjamanController extends Controller
{
    public function getDataPinjaman(Request $request)
    {
        $columns = [
            0 => 'id',
            1 => 'anggota_id',
            2 => 'nominal_pinjaman',
            3 => 'jenis_pinjaman',
            4 => 'tgl_pinjam',
            5 => 'jml_angsuran',
            6 => 'input_by',
            7 => 'tgl_input',
            8 => 'angsuran_belum_lunas'
        ];

        $totalData = Pinjaman::count();
        $totalFiltered = $totalData;

        $limit = $request->input('length', 10);
        $start = $request->input('start', 0);
        $orderColumnIndex = $request->input('order.0.column');
        $orderColumn = $columns[$orderColumnIndex] ?? 'id';
        $orderDir = $request->input('order.0.dir', 'desc');
        $search = $request->input('search.value');

        // Ambil filter dari request
        $filterJenisPinjaman = $request->input('filter_jenis_pinjaman');
        $filterTglPinjam1 = $request->input('filter_tgl_pinjam1');
        $filterTglPinjam2 = $request->input('filter_tgl_pinjam2');

        // Query utama dengan join anggota dan subquery cek angsuran belum lunas
        $query = Pinjaman::join('anggota', 'anggota.id', '=', 'pinjaman.anggota_id')
            ->select('pinjaman.*', 'anggota.nama as anggota_nama')
            ->addSelect(DB::raw('(SELECT COUNT(*) FROM angsuran WHERE angsuran.pinjaman_id = pinjaman.id AND status_bayar = "0") as angsuran_belum_lunas'));

        // Filter berdasarkan jenis pinjaman jika ada
        if (!empty($filterJenisPinjaman)) {
            $query->where('pinjaman.jenis_pinjaman', $filterJenisPinjaman);
        }

        // Filter berdasarkan rentang tanggal pinjam jika ada
        if (!empty($filterTglPinjam1) && !empty($filterTglPinjam2)) {
            $query->whereBetween('pinjaman.tgl_pinjam', [$filterTglPinjam1, $filterTglPinjam2]);
        } elseif (!empty($filterTglPinjam1)) {
            $query->where('pinjaman.tgl_pinjam', '>=', $filterTglPinjam1);
        } elseif (!empty($filterTglPinjam2)) {
            $query->where('pinjaman.tgl_pinjam', '<=', $filterTglPinjam2);
        }

        // Filter pencarian global
        if (!empty($search)) {
            $query->where(function ($q) use ($search) {
                $q->where('anggota.nama', 'LIKE', "%{$search}%")
                ->orWhere('pinjaman.input_by', 'LIKE', "%{$search}%");
            });
        }

        $totalFiltered = $query->count();

        $pinjaman = $query
            ->offset($start)
            ->limit($limit)
            ->orderBy($orderColumn, $orderDir)
            ->get();

        $data = [];
        $no = $start + 1;
        foreach ($pinjaman as $item) {
            $row = [];
            $row[] = $no++;
            $row[] = $item->anggota_nama; // nama anggota
            $row[] = number_format($item->nominal_pinjaman, 2);
            $row[] = ucfirst($item->jenis_pinjaman);
            $row[] = date('d-m-Y', strtotime($item->tgl_pinjam));
            $row[] = $item->jml_angsuran;
            $row[] = $item->input_by;
            $row[] = $item->tgl_input ? date('d-m-Y', strtotime($item->tgl_input)) : '';
            $row[] = $item->angsuran_belum_lunas; // status lunas
            $row[] = $item->id; // id pinjaman

            $data[] = $row;
        }

        return response()->json([
            'draw' => intval($request->input('draw')),
            'recordsTotal' => intval($totalData),
            'recordsFiltered' => intval($totalFiltered),
            'data' => $data,
        ]);
    }
    public function index()
    {
        $anggota = Anggota::select('id', 'nama')->distinct()->get();
        $jenis_pinjaman = Jenis_pinjaman::select('id', 'jenis')->get();
        return view('pinjaman.index' , compact('jenis_pinjaman', 'anggota'));
    }

    public function create()
    {
        $jenis_pinjaman = jenis_pinjaman::all();
        $anggotas = Anggota::all();
        return view('pinjaman.create', compact('anggotas', 'jenis_pinjaman'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'anggota_id' => 'required',
            'nominal_pinjaman' => 'required|numeric',
            'jenis_pinjaman' => 'required',
            'tgl_pinjam' => 'required|date',
            'jml_angsuran' => 'required|integer',
            'tgl_input' => 'nullable|date',
        ]);

        // Ambil user id yang sedang login untuk kolom input_by
        $validated['input_by'] = auth()->id();

        $provisiRecord = Provisi::first()->provisi;
        $jasaRecord = Jasa::first()->jasa;
        $provisiNominal = $validated['nominal_pinjaman'] * $provisiRecord;

        // Simpan data pinjaman dan ambil id-nya
        $pinjaman = Pinjaman::create([
            'anggota_id' => $validated['anggota_id'],
            'nominal_pinjaman' => $validated['nominal_pinjaman'],
            'jenis_pinjaman' => $validated['jenis_pinjaman'],
            'tgl_pinjam' => $validated['tgl_pinjam'],
            'jml_angsuran' => $validated['jml_angsuran'],
            'input_by' => $validated['input_by'],
            'tgl_input' => $validated['tgl_input'] ?? now(),
            'rate' => $provisiRecord, // simpan rate jika kolom ada
            'provisi' => $provisiNominal, // simpan provisi jika kolom ada
        ]);

        // Hitung nominal angsuran per bulan
        $angsuranPokok = $validated['nominal_pinjaman'] / $validated['jml_angsuran'];
        $jasaNominal = $validated['nominal_pinjaman'] * $jasaRecord; // jasa per bulan
        $nominalAngsuran = $angsuranPokok + $jasaNominal;

        // Buat data angsuran sebanyak jml_angsuran
        for ($i = 1; $i <= $validated['jml_angsuran']; $i++) {
            Angsuran::create([
                'pinjaman_id' => $pinjaman->id,
                'anggota_id' => $validated['anggota_id'],
                'angsuran_ke' => $i,
                'nominal_angsuran' => $angsuranPokok,
                'jasa' => $jasaRecord, // simpan jasa per bulan
                'nominal_bayar' => $nominalAngsuran, // total angsuran per bulan
                'tgl_bayar' => null,
                'tgl_input' => $validated['tgl_input'] ?? now(),
                'total_pinjaman' => $validated['nominal_pinjaman'],
                'status_bayar' => '0',
            ]);
        }

        return redirect()->route('pinjaman.index')->with('success', 'Data pinjaman dan angsuran berhasil disimpan.');
    }

    public function show(Pinjaman $pinjaman)
    {
        return response()->json($pinjaman);
    }

    public function edit($id)
    {
        $pinjaman = Pinjaman::findOrFail($id);
        $anggotas = Anggota::all();
        return view('pinjaman.edit', compact('pinjaman', 'anggotas'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pinjaman $pinjaman)
    {
        //update pinjaman
    }

    public function destroy(Pinjaman $pinjaman)
    {
        $pinjaman->delete();
        return response()->json(null, 204);
    }

    public function getpinjaman($id)
    {
        $columns = [
            0 => 'angsuran.id',
            1 => 'anggota.nama',
            2 => 'angsuran.angsuran_ke',
            3 => 'angsuran.nominal_angsuran',
            4 => 'angsuran.tgl_bayar',
            5 => 'angsuran.status_bayar'
        ];

        $totalData = Angsuran::where('pinjaman_id', $id)->count();
        $totalFiltered = $totalData;

        $limit = request()->input('length', 10);
        $start = request()->input('start', 0);
        $orderColumnIndex = request()->input('order.0.column');
        $orderColumn = $columns[$orderColumnIndex] ?? 'angsuran.id';
        $orderDir = request()->input('order.0.dir', 'desc');
        $search = request()->input('search.value');

        // Join angsuran with anggota to get anggota.nama
        $query = Angsuran::select('angsuran.id', 'anggota.nama', 'angsuran.angsuran_ke', 'angsuran.nominal_angsuran', 'angsuran.tgl_bayar', 'angsuran.status_bayar')
            ->join('anggota', 'angsuran.anggota_id', '=', 'anggota.id')
            ->where('angsuran.pinjaman_id', $id);

        if (!empty($search)) {
            $query->where(function ($q) use ($search) {
                $q->where('anggota.nama', 'LIKE', "%{$search}%")
                    ->orWhere('angsuran.angsuran_ke', 'LIKE', "%{$search}%")
                    ->orWhere('angsuran.nominal_angsuran', 'LIKE', "%{$search}%")
                    ->orWhere('angsuran.tgl_bayar', 'LIKE', "%{$search}%")
                    ->orWhere('angsuran.status_bayar', 'LIKE', "%{$search}%");
            });
            $totalFiltered = $query->count();
        }

        $angsuran = $query
            ->offset($start)
            ->limit($limit)
            ->orderBy($orderColumn, $orderDir)
            ->get();

        $data = [];
        $no = $start + 1;
        foreach ($angsuran as $item) {
            $row = [];
            $row[] = $no++;
            $row[] = $item->nama; // anggota.nama instead of anggota_id
            $row[] = $item->angsuran_ke;
            $row[] = number_format($item->nominal_angsuran, 2);
            $row[] = $item->tgl_bayar;
            $row[] = $item->status_bayar == '0' ? 'Belum Lunas' : 'Lunas';
            $row[] = $item->id; // id angsuran
            $data[] = $row;
        }

        return response()->json([
            'draw' => intval(request()->input('draw')),
            'recordsTotal' => intval($totalData),
            'recordsFiltered' => intval($totalFiltered),
            'data' => $data,
        ]);
        
    }
    public function getAdministrasiProvisi()
    {
        // Ambil nilai administrasi dari tabel administrasi (sesuaikan model dan kolom)
        $administrasi = Administrasi::first()?->administrasi;

        // Ambil nilai provisi dari tabel provisi (sesuaikan model dan kolom)
        $provisiRate = Provisi::first()?->provisi;

        return response()->json([
            'administrasi' => $administrasi,
            'provisi' => $provisiRate,
        ]);
    }
     public function getUnpaidDetails($id)
    {
        $result = DB::table('angsuran')
            ->where('pinjaman_id', $id)
            ->where('status_bayar', '=', '0')
            ->select(
                DB::raw('SUM(nominal_angsuran) as total_nominal'),
                DB::raw('COUNT(*) as remaining_installments')
            )
            ->first();

        return response()->json([
            'total_nominal' => $result->total_nominal ?? 0,
            'remaining_installments' => $result->remaining_installments ?? 0,
        ]);
    }
    public function bayarPinjaman($pinjamanId)
    {
        // Update semua angsuran yang belum dibayar (status_bayar != 1) untuk pinjaman ini
        $updated = DB::table('angsuran')
            ->where('pinjaman_id', $pinjamanId)
            ->where('status_bayar', '=', '0')
            ->update([
                'tgl_bayar' => Carbon::now()->format('Y-m-d'), 
                'status_bayar' => '1', // Set status_bayar menjadi 1
            ]);

        if ($updated) {
            return response()->json([
                'success' => true,
                'message' => 'Pembayaran angsuran berhasil diperbarui.'
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Tidak ada angsuran yang perlu dibayar atau update gagal.'
            ], 400);
        }
    }
}
