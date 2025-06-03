@extends('layouts.app')
@section('title', 'Detail Anggota')
@section('content')
<div class="container">
    <div class="row">

        <!-- Card: Detail Anggota -->
        <div class="col-md-4 mb-4">
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
    
        <!-- Card: Jumlah Simpanan Lengkap -->
        <div class="col-md-4 mb-4 d-flex">
            <div class="card w-100 text-white bg-gradient-success shadow">
                <div class="card-header bg-success">
                    <h5 class="mb-0">Jumlah Simpanan</h5>
                </div>
                <div class="card-body text-dark bg-light rounded-bottom">
                    <ul class="list-group list-group-flush mb-3">
                        @foreach ($datasimpanan as $simpana )
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            {{ $simpana->jenis_simpanan }}
                            <span class="badge bg-primary text-white">
                                Rp {{ number_format($simpana->nominal_simpanan, 0, ',', '.') }}
                            </span>
                        </li>     
                        @endforeach
                    </ul>
                    <div class="text-center">
                        <h5 class="fw-bold text-success">Total Simpanan</h5>
                        <h4 class="text-success">Rp {{ number_format($total_simpanan, 0, ',', '.') }}</h4>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card: Jumlah Pinjaman Lengkap -->
        <div class="col-md-4 mb-4 d-flex">
            <div class="card w-100 text-white bg-gradient-secondary shadow">
                <div class="card-header bg-secondary">
                    <h5 class="mb-0">Jumlah Pinjaman</h5>
                </div>
                <div class="card-body text-dark bg-light rounded-bottom">
                    <ul class="list-group list-group-flush mb-3">
                        @foreach ($datapinjaman as $Pinjaman )
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            {{ $Pinjaman->jenis_pinjaman }}
                            <span class="badge bg-primary text-white">
                                Rp {{ number_format($Pinjaman->nominal_pinjaman, 0, ',', '.') }}
                            </span>
                        </li>     
                        @endforeach
                    </ul>
                    <div class="text-center">
                        <h5 class="fw-bold text-secondary">Total Pinjaman</h5>
                        <h4 class="text-secondary">Rp {{ number_format($total_pinjaman, 0, ',', '.') }}</h4>
                    </div>
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
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>
                    @forelse($topPinjaman as $pinjaman)
                        <tr>
                            <td>{{ \Carbon\Carbon::parse($pinjaman->tgl_input)->format('d M Y') }}</td>
                            <td>{{ $pinjaman->jenis_pinjaman ?? '-' }}</td>
                            <td>Rp {{ number_format($pinjaman->nominal_pinjaman, 0, ',', '.') }}</td>
                            <td>{{ $pinjaman->status }}</td>
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
<a href="{{ route('pengajuan.create') }}" 
   class="btn btn-primary rounded-circle shadow-lg" 
   title="Pengajuan Pinjaman"
   style="position: fixed; bottom: 20px; right: 20px; width: 60px; height: 60px; display: flex; justify-content: center; align-items: center;">
   <i class="bi bi-plus-lg"></i>
</a>
@endsection