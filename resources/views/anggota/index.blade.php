@extends('layouts.app')

@section('title', 'Anggota')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Anggota</div>
            <div class="card-body">
                <a href="{{ route('anggota.create') }}" class="btn btn-primary mb-3">Tambah Anggota</a>

                @if(session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif

                @if(session('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('error') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endif

                <table id="anggota-table" class="table table-striped display responsive nowrap" style="width:100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Username</th>
                            <th>Jabatan</th>
                            <th>No HP</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@push('styles')
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.dataTables.min.css">
@endpush

@push('scripts')
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
$(document).ready(function() {
    $('#anggota-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('anggota.getDataPinjaman') }}",
        columns: [
            { data: 0, title: "No" },
            { data: 1, title: "Nama" },
            { data: 2, title: "Username" },
            { data: 3, title: "Jabatan" },
            { data: 4, title: "No HP" },
            { data: 5, title: "Aksi", orderable: false, searchable: false }
        ]
    });
});

// Fungsi untuk menonaktifkan anggota dengan validasi pinjaman
$(document).on('click', '.btn-hapus', function() {
    var id = $(this).data('id');

    Swal.fire({
        title: 'Apakah Anda yakin?',
        text: "Anggota ini akan dinonaktifkan!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Ya, nonaktifkan!',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/anggota/' + id + '/update-status',
                type: 'PATCH',
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function(response) {
                    $('#anggota-table').DataTable().ajax.reload(null, false);
                    Swal.fire('Berhasil!', response.message, 'success');
                },
                error: function(xhr) {
                    Swal.fire('Gagal!', xhr.responseJSON?.message || 'Gagal menonaktifkan anggota.', 'error');
                }
            });
        }
    });
});

</script>
@endpush