@extends('layouts.app')

@section('title', 'Simpanan')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Simpanan</div>
            <div class="card-body">
                <a href="{{ route('simpanan.create') }}" class="btn btn-primary mb-3">Tambah Simpanan</a>
                <table id="simpanan-table" class="table table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Jenis Simpanan</th>
                            <th>Nominal Simpanan</th>
                            <th>Input By</th>
                            <th>Tanggal Update</th>
                            <!-- <th>Aksi</th> -->
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Data akan diisi oleh DataTables -->
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
<script>
$(function() {
    $('#simpanan-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route("simpanan.data") }}',
        columns: [
            { data: 0, name: 'no', orderable: false, searchable: false },
            { data: 1, name: 'nama' },
            { data: 2, name: 'jenis_simpanan' },
            { data: 3, name: 'nominal_simpanan' },
            { data: 4, name: 'input_by' },
            {
            data: 5,
            name: 'tgl_update',
                render: function(data, type, row) {
                    if (!data) return '';
                    const date = new Date(data);
                    const yyyy = date.getFullYear();
                    const mm = String(date.getMonth() + 1).padStart(2, '0');
                    const dd = String(date.getDate()).padStart(2, '0');
                    return `${yyyy}-${mm}-${dd}`;
                }
            }
            // { 
            //     data: 6, 
            //     name: 'aksi', 
            //     orderable: false, 
            //     searchable: false,
            //     render: function(data, type, row) {
            //         return `
            //             <a href="/simpanan/${row[7]}/edit" class="btn btn-sm btn-warning">Edit</a>
            //             <form action="/simpanan/${row[7]}" method="POST" style="display:inline;">
            //                 @csrf
            //                 @method('DELETE')
            //                 <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
            //             </form>
            //         `;
            //     }
            // },
        ]
    });
});
</script>
@endpush
