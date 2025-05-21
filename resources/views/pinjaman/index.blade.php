@extends('layouts.app')

@section('title', 'Pinjaman')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Pinjaman</div>
            <div class="card-body">
                <a href="{{ route('pinjaman.create') }}" class="btn btn-primary mb-3">Tambah Pinjaman</a>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Anggota</th>
                            <th>Nominal Pinjaman</th>
                            <th>Jenis Pinjaman</th>
                            <th>Jumlah Angsuran</th>
                            <th>Tanggal Pinjam</th>
                            <th>Pelunasan</th>
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
<script>
$(document).ready(function() {
    $('.table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '{{ route("pinjaman.data") }}',
        columns: [
            { data: 0, name: 'id' },
            { data: 1, name: 'anggota_id' },
            { data: 2, name: 'nominal_pinjaman' },
            { data: 3, name: 'jenis_pinjaman' },
            { data: 5, name: 'jml_angsuran' },
            { data: 4, name: 'tgl_pinjam' },
            {  render: function(data, type, row) {
                // row[8] adalah angsuran_belum_lunas
                if (row[8] == '0') {
                    return '<button class="btn btn-sm btn-secondary" disabled>Lunas</button>';
                } else {
                    // Bangun URL edit dengan menambahkan ID pinjaman ke base URL
                    var urlEdit = '{{ url("pinjaman") }}/' + row[9] + '/edit';
                    return `<a href="${urlEdit}" class="btn btn-sm btn-success btn-pelunasan" data-id="${row[9]}">Pelunasan</a>`;
                }
            }
        }],
        order: [[0, 'desc']]
    });
});
</script>
@endpush