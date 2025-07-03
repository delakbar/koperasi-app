@extends('layouts.app')

@section('title', 'Cek Pengajuan Anggota')

@section('content')
<div class="container py-5">

    <h2 class="mb-4 fw-bold">Cek Pengajuan Anggota</h2>

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
                <i class="bi bi-wallet2"></i> Pinjaman
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

        <!-- Pinjaman -->
        <div class="tab-pane fade show active" id="pinjaman" role="tabpanel" aria-labelledby="pinjaman-tab">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>Nama Anggota</th>
                                    <th>Jenis Pinjaman</th>
                                    <th>Nominal</th>
                                    <th>Tanggal</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($pinjamanPengajuan as $pinjaman)
                                <tr>
                                    <td>{{ $pinjaman->anggota->nama ?? '-' }}</td>
                                    <td>{{ $pinjaman->jenis_pinjaman }}</td>
                                    <td>Rp {{ number_format($pinjaman->nominal_pinjaman, 0, ',', '.') }}</td>
                                    <td>{{ date('d-m-Y', strtotime($pinjaman->tgl_input)) }}</td>
                                    <td>{{ ucfirst($pinjaman->status) }}</td>
                                    <td>
                                        @if($pinjaman->status === 'Pengajuan')
                                            <button class="btn btn-success btn-sm btn-terima"
                                                data-id="{{ $pinjaman->id }}"
                                                data-status="Diterima Admin"
                                                data-route="/pinjaman-pengajuan/{{ $pinjaman->id }}/update-status">
                                                Terima
                                            </button>
                                            <button class="btn btn-danger btn-sm btn-tolak"
                                                data-id="{{ $pinjaman->id }}"
                                                data-status="Ditolak Admin"
                                                data-route="/pinjaman-pengajuan/{{ $pinjaman->id }}/update-status">
                                                Tolak
                                            </button>
                                        @else
                                            <span class="badge bg-secondary">Diproses</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('anggota.show', $pinjaman->anggota_id) }}" class="btn btn-dark btn-sm text-white">Detail</a>
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td colspan="7" class="text-center text-muted">Tidak ada pengajuan pinjaman.</td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Simpanan -->
        <div class="tab-pane fade" id="simpanan" role="tabpanel" aria-labelledby="simpanan-tab">
            <div class="card shadow-sm border-0">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>Nama Anggota</th>
                                    <th>Jumlah</th>
                                    <th>Tanggal</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($simpananPengajuan as $simpanan)
                                <tr>
                                    <td>{{ $simpanan->anggota->nama ?? '-' }}</td>
                                    <td>Rp {{ number_format($simpanan->nominal_simpanan, 0, ',', '.') }}</td>
                                    <td>{{ date('d-m-Y', strtotime($simpanan->tgl_update)) }}</td>
                                    <td>{{ ucfirst($simpanan->status) }}</td>
                                    <td>
                                        @if($simpanan->status === 'Pengajuan')
                                            <button class="btn btn-success btn-sm btn-terima"
                                                data-id="{{ $simpanan->id }}"
                                                data-status="Diterima Admin"
                                                data-route="/simpanan-pengajuan/{{ $simpanan->id }}/update-status">
                                                Terima
                                            </button>
                                            <button class="btn btn-danger btn-sm btn-tolak"
                                                data-id="{{ $simpanan->id }}"
                                                data-status="Ditolak Admin"
                                                data-route="/simpanan-pengajuan/{{ $simpanan->id }}/update-status">
                                                Tolak
                                            </button>
                                        @else
                                            <span class="badge bg-secondary">Diproses</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('anggota.show', $simpanan->anggota_id) }}" class="btn btn-dark btn-sm text-white">Detail</a>
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td colspan="6" class="text-center text-muted">Tidak ada pengajuan simpanan.</td>
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
<!-- Tambahkan SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
document.addEventListener('DOMContentLoaded', function () {

    // ======= TOMBOL TERIMA =======
    document.querySelectorAll('.btn-terima').forEach(button => {
        button.addEventListener('click', function () {
            const id = this.dataset.id;
            const status = this.dataset.status;
            const route = this.dataset.route;

            Swal.fire({
                title: 'Yakin ingin menerima pengajuan ini?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Ya, Terima',
                cancelButtonText: 'Batal'
            }).then(result => {
                if (result.isConfirmed) {
                    const form = document.createElement('form');
                    form.method = 'POST';
                    form.action = route;

                    // CSRF Token
                    const csrf = document.createElement('input');
                    csrf.type = 'hidden';
                    csrf.name = '_token';
                    csrf.value = '{{ csrf_token() }}';
                    form.appendChild(csrf);

                    // Spoof PATCH method
                    const method = document.createElement('input');
                    method.type = 'hidden';
                    method.name = '_method';
                    method.value = 'PATCH';
                    form.appendChild(method);

                    // Status
                    const statusInput = document.createElement('input');
                    statusInput.type = 'hidden';
                    statusInput.name = 'status';
                    statusInput.value = status;
                    form.appendChild(statusInput);

                    document.body.appendChild(form);
                    form.submit();
                }
            });
        });
    });

    // ======= TOMBOL TOLAK =======
    document.querySelectorAll('.btn-tolak').forEach(button => {
        button.addEventListener('click', function () {
            const id = this.dataset.id;
            const status = this.dataset.status;
            const route = this.dataset.route;

            Swal.fire({
                title: 'Alasan Penolakan',
                input: 'textarea',
                inputLabel: 'Tuliskan alasan mengapa pengajuan ini ditolak.',
                inputPlaceholder: 'Masukkan alasan...',
                showCancelButton: true,
                confirmButtonText: 'Tolak',
                cancelButtonText: 'Batal',
                inputValidator: (value) => {
                    if (!value) {
                        return 'Alasan wajib diisi!';
                    }
                }
            }).then(result => {
                if (result.isConfirmed) {
                    const alasan = result.value;

                    const form = document.createElement('form');
                    form.method = 'POST';
                    form.action = route;

                    // CSRF Token
                    const csrf = document.createElement('input');
                    csrf.type = 'hidden';
                    csrf.name = '_token';
                    csrf.value = '{{ csrf_token() }}';
                    form.appendChild(csrf);

                    // Spoof PATCH method
                    const method = document.createElement('input');
                    method.type = 'hidden';
                    method.name = '_method';
                    method.value = 'PATCH';
                    form.appendChild(method);

                    // Status
                    const statusInput = document.createElement('input');
                    statusInput.type = 'hidden';
                    statusInput.name = 'status';
                    statusInput.value = status;
                    form.appendChild(statusInput);

                    // Keterangan (alasan)
                    const keterangan = document.createElement('input');
                    keterangan.type = 'hidden';
                    keterangan.name = 'keterangan';
                    keterangan.value = alasan;
                    form.appendChild(keterangan);

                    document.body.appendChild(form);
                    form.submit();
                }
            });
        });
    });
});
</script>
@endpush
