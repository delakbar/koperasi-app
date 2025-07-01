@extends('layouts.app')

@section('title', 'Persetujuan Ketua')

@section('content')
<div class="container py-5">

    <h2 class="mb-4 fw-bold">Persetujuan Ketua</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <!-- Tabs -->
    <ul class="nav nav-tabs nav-fill mb-4 rounded border" id="pengajuanTabs" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active d-flex justify-content-center align-items-center gap-2"
                id="pinjaman-tab"
                data-bs-toggle="tab"
                data-bs-target="#pinjaman"
                type="button"
                role="tab"
                aria-controls="pinjaman"
                aria-selected="true">
                <i class="bi bi-wallet2"></i> Pengajuan Pinjaman
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link d-flex justify-content-center align-items-center gap-2"
                id="simpanan-tab"
                data-bs-toggle="tab"
                data-bs-target="#simpanan"
                type="button"
                role="tab"
                aria-controls="simpanan"
                aria-selected="false">
                <i class="bi bi-piggy-bank"></i> Simpanan Sukarela
            </button>
        </li>
    </ul>

    <!-- Tab Content -->
    <div class="tab-content" id="pengajuanTabsContent">
        <!-- TAB PINJAMAN -->
        <div class="tab-pane fade show active" id="pinjaman" role="tabpanel" aria-labelledby="pinjaman-tab">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>No</th>
                                    <th>Nama Anggota</th>
                                    <th>Nominal</th>
                                    <th>Jenis</th>
                                    <th>Tanggal Pengajuan</th>
                                    <th>Status</th>
                                    <th>Aksi Ketua</th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($pinjamanPengajuan as $index => $pinjaman)
                                    @if($pinjaman->status === 'Diterima Admin')
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $pinjaman->anggota->nama ?? 'N/A' }}</td>
                                        <td>Rp {{ number_format($pinjaman->nominal_pinjaman, 0, ',', '.') }}</td>
                                        <td>{{ $pinjaman->jenis_pinjaman }}</td>
                                        <td>{{ \Carbon\Carbon::parse($pinjaman->tgl_pinjam)->format('d-m-Y') }}</td>
                                        <td><span class="badge bg-info">{{ $pinjaman->status }}</span></td>
                                        <td>
                                            <form action="{{ route('KetuaPinjaman.updateStatus', $pinjaman->id) }}" method="POST" class="d-inline form-terima">
                                                @csrf @method('PATCH')
                                                <input type="hidden" name="status" value="Disetujui Ketua">
                                                <button type="submit" class="btn btn-sm btn-success btn-terima">Setujui</button>
                                            </form>
                                            <form action="{{ route('KetuaPinjaman.updateStatus', $pinjaman->id) }}" method="POST" class="d-inline form-tolak">
                                                @csrf @method('PATCH')
                                                <input type="hidden" name="status" value="Ditolak Ketua">
                                                <button type="submit" class="btn btn-sm btn-danger btn-tolak">Tolak</button>
                                            </form>
                                        </td>
                                        <td>
                                            <a href="{{ route('anggota.show', $pinjaman->anggota_id) }}" class="btn btn-dark btn-sm">Detail</a>
                                        </td>
                                    </tr>
                                    @endif
                                @empty
                                <tr>
                                    <td colspan="8" class="text-center text-muted">Tidak ada pengajuan pinjaman.</td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- TAB SIMPANAN -->
        <div class="tab-pane fade" id="simpanan" role="tabpanel" aria-labelledby="simpanan-tab">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>No</th>
                                    <th>Nama Anggota</th>
                                    <th>Jenis Simpanan</th>
                                    <th>Nominal</th>
                                    <th>Tanggal</th>
                                    <th>Status</th>
                                    <th>Aksi Ketua</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($simpananPengajuan as $index => $simpanan)
                                    @if($simpanan->status === 'Diterima Admin')
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $simpanan->anggota->nama ?? 'N/A' }}</td>
                                        <td>{{ $simpanan->jenis_simpanan }}</td>
                                        <td>Rp {{ number_format($simpanan->nominal, 0, ',', '.') }}</td>
                                        <td>{{ \Carbon\Carbon::parse($simpanan->tanggal)->format('d-m-Y') }}</td>
                                        <td><span class="badge bg-info">{{ $simpanan->status }}</span></td>
                                        <td>
                                            <form action="{{ route('KetuaPinjaman.updateSimpananStatus', $simpanan->id) }}" method="POST" class="d-inline form-terima">
                                                @csrf @method('PATCH')
                                                <input type="hidden" name="status" value="Disetujui Ketua">
                                                <button type="submit" class="btn btn-sm btn-success btn-terima">Setujui</button>
                                            </form>
                                            <form action="{{ route('KetuaPinjaman.updateSimpananStatus', $simpanan->id) }}" method="POST" class="d-inline form-tolak">
                                                @csrf @method('PATCH')
                                                <input type="hidden" name="status" value="Ditolak Ketua">
                                                <button type="submit" class="btn btn-sm btn-danger btn-tolak">Tolak</button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endif
                                @empty
                                <tr>
                                    <td colspan="7" class="text-center text-muted">Tidak ada pengajuan simpanan sukarela.</td>
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


@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
document.addEventListener('DOMContentLoaded', function () {
    // ======= TOMBOL SETUJUI KETUA =======
    document.querySelectorAll('.btn-terima').forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            Swal.fire({
                title: 'Yakin ingin menyetujui pengajuan ini?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Ya, Setujui',
                cancelButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    this.closest('form').submit();
                }
            });
        });
    });

    // ======= TOMBOL TOLAK KETUA =======
    document.querySelectorAll('.btn-tolak').forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();

            Swal.fire({
                title: 'Tolak pengajuan ini?',
                input: 'textarea',
                inputLabel: 'Keterangan penolakan',
                inputPlaceholder: 'Masukkan alasan penolakan...',
                inputAttributes: {
                    'aria-label': 'Keterangan penolakan'
                },
                showCancelButton: true,
                confirmButtonText: 'Tolak',
                cancelButtonText: 'Batal',
                preConfirm: (value) => {
                    if (!value) {
                        Swal.showValidationMessage('Keterangan wajib diisi!');
                    }
                    return value;
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    const form = this.closest('form');
                    const inputKeterangan = document.createElement('input');
                    inputKeterangan.type = 'hidden';
                    inputKeterangan.name = 'keterangan';
                    inputKeterangan.value = result.value;
                    form.appendChild(inputKeterangan);
                    form.submit();
                }
            });
        });
    });
});
</script>
@endpush

