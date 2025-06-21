@extends('layouts.app')

@section('title', 'Cek Pengajuan Pinjaman')

@section('content')
<div class="container mt-4">
    <h1 class="mb-4">Daftar Pengajuan Pinjaman</h1>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered display responsive" >
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Nama Anggota</th>
                <th>Nominal Pinjaman</th>
                <th>Jenis Pinjaman</th>
                <th>Tanggal Pengajuan</th>
                <th>Status</th>
                <th>Aksi</th>
                <th>Detail Anggota</th>
            </tr>
        </thead>
        <tbody>
            @forelse($pinjamanPengajuan as $index => $pinjaman)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $pinjaman->anggota->nama ?? 'N/A' }}</td>
                    <td>Rp {{ number_format($pinjaman->nominal_pinjaman, 0, ',', '.') }}</td>
                    <td>{{ $pinjaman->jenis_pinjaman }}</td>
                    <td>{{ \Carbon\Carbon::parse($pinjaman->tgl_pinjam)->format('d-m-Y') }}</td>
                    <td>                    
                        {{ $pinjaman->status }}                       
                    </td>
                    <td>
                        @if($pinjaman->status == 'Diterima Admin')
                        <form action="{{ route('KetuaPinjaman.updateStatus', $pinjaman->id) }}" method="POST" style="display:inline-block;" class="form-terima">
                            @csrf
                            @method('PATCH')
                            <input type="hidden" name="status" value="Diterima Ketua">
                            <button type="submit" class="btn btn-sm btn-success btn-terima">Terima</button>
                        </form>
                        <form action="{{ route('KetuaPinjaman.updateStatus', $pinjaman->id) }}" method="POST" style="display:inline-block;" class="form-tolak">
                            @csrf
                            @method('PATCH')
                            <input type="hidden" name="status" value="Ditolak Ketua">
                            <!-- Keterangan akan ditambahkan secara dinamis via JS -->
                            <button type="submit" class="btn btn-sm btn-danger btn-tolak">Tolak</button>
                        </form>
                        @else
                        <em>closed</em>
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('anggota.show', $pinjaman->anggota_id) }}" class="btn btn-dark text-white btn-sm">Detail</a>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="7" class="text-center">Tidak ada pengajuan pinjaman.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
</div>
@endsection

@push('scripts')
<!-- Include SweetAlert2 via CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
document.addEventListener('DOMContentLoaded', function () {
    // Konfirmasi Terima dengan SweetAlert
    document.querySelectorAll('.btn-terima').forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            Swal.fire({
                title: 'Terima pengajuan pinjaman ini?',
                icon: 'question',
                showCancelButton: true,
                confirmButtonText: 'Ya, terima',
                cancelButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    this.closest('form').submit();
                }
            });
        });
    });

    // Konfirmasi Tolak dengan input keterangan
    document.querySelectorAll('.btn-tolak').forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            Swal.fire({
                title: 'Tolak pengajuan pinjaman ini?',
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
                    let inputKeterangan = form.querySelector('input[name="keterangan"]');
                    if (!inputKeterangan) {
                        inputKeterangan = document.createElement('input');
                        inputKeterangan.type = 'hidden';
                        inputKeterangan.name = 'keterangan';
                        form.appendChild(inputKeterangan);
                    }
                    inputKeterangan.value = result.value;
                    form.submit();
                }
            });
        });
    });
});
</script>
@endpush
