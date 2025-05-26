@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">

        <!-- Card: Detail Anggota -->
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-header">
                    Detail Anggota
                </div>
                <div class="card-body">
                    <p><strong>Nama Anggota:</strong> {{ $detail->nama }}</p>
                    <p><strong>Status Anggota:</strong> {{ $detail->is_active == 1 ? 'Aktif' : 'Tidak Aktif' }}</p>
                    <p><strong>Jabatan:</strong> {{ $detail->role }}</p>
                    <p><strong>Masuk Anggota Pada:</strong> {{ $detail->created_at->format('d M Y') }}</p>
                </div>
            </div>
        </div>
        
        <!-- Card: Jumlah Simpanan -->
        <div class="col-md-3 mb-4">
            <div class="card text-white bg-success">
                <div class="card-header">
                    Jumlah Simpanan
                </div>
                <div class="card-body">
                    <h4 class="card-title">
                        Rp {{ number_format($simpanan, 0, ',', '.') }}
                    </h4>
                </div>
            </div>
        </div>

        <!-- Card: Jumlah Pinjaman -->
        <div class="col-md-3 mb-4">
            <div class="card text-white bg-info">
                <div class="card-header">
                    Jumlah Pinjaman
                </div>
                <div class="card-body">
                    <h4 class="card-title">
                        Rp {{ number_format($pinjaman, 0, ',', '.') }}
                    </h4>
                </div>
            </div>
        </div>
        <!-- Table: Histori Simpanan -->
        <div class="col-md-6 mb-4">
            <div class="card">
            <div class="card-header">
                Histori Simpanan
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                <table class="table mb-0 table-bordered">
                    <thead>
                    <tr>
                        <th>Tanggal</th>
                        <th>Jenis</th>
                        <th>Jumlah</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($topSimpanan as $simpanan)
                        <tr>
                            <td>{{ \Carbon\Carbon::parse($simpanan->tgl_update)->format('d M Y') }}</td>
                            <td>{{ $simpanan->jenis_simpanan }}</td>
                            <td>Rp {{ number_format($simpanan->nominal_simpanan, 0, ',', '.') }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="3" class="text-center">Belum ada data</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
                </div>
            </div>
            </div>
        </div>

        <!-- Table: Histori Pinjaman -->
        <div class="col-md-6 mb-4">
            <div class="card">
            <div class="card-header">
                Histori Pinjaman
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                <table class="table mb-0 table-bordered">
                    <thead>
                    <tr>
                        <th>Tanggal</th>
                        <th>Jenis</th>
                        <th>Jumlah</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($topPinjaman as $pinjaman)
                        <tr>
                            <td>{{ \Carbon\Carbon::parse($pinjaman->tgl_input)->format('d M Y') }}</td>
                            <td>{{ $pinjaman->jenis_pinjaman ?? '-' }}</td>
                            <td>Rp {{ number_format($pinjaman->nominal_pinjaman, 0, ',', '.') }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="3" class="text-center">Belum ada data</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
@endsection