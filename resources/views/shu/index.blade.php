@extends('layouts.app')

@section('title', 'Anggota')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Pembagian SHU</div>
            <div class="card-body">
               <form id="filterForm" class="row g-2 mb-3">
                   <div class="col-md-2">
                        <input type="text" name="start_date" id="start_date" class="form-control" value="{{ request('start_date') }}" placeholder="Tanggal Mulai">
                    </div>
                    <div class="col-md-2">
                        <input type="text" name="end_date" id="end_date" class="form-control" value="{{ request('end_date') }}" placeholder="Tanggal Selesai">
                    </div>
                    <div class="col-md-4 d-flex align-items-start gap-2">                
                        @csrf
                        <button type="button" id="hitungShuBtn" class="btn btn-success">Hitung SHU</button>
                        <button type="button" id="resetBtn" class="btn btn-secondary">Reset</button>
                    </div>
                </form>

                 <table id="shuTable" class="table table-bordered display responsive" >
                    <thead class="table-dark">
                        <tr>
                            <th>Nama</th>
                            <th>Total Simpanan</th>
                            <th>pengkali simpanan</th>
                            <th>SHU Simpanan</th>
                            <th>Total Pinjaman</th>
                            <th>pengkali pinjaman</th>
                            <th>SHU Pinjaman</th>
                            <th>Total SHU</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- DataTables will populate -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@push('styles')
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.dataTables.min.css">
<style>
  .dataTables_filter input {
    margin-bottom: 10px;
  }
</style>
@endpush

@push('scripts')
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
$(document).ready(function () {
    // Inisialisasi Datepicker
    $('#start_date, #end_date').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
        orientation: "bottom auto"
    });

    var table = $('#shuTable').DataTable({
        processing: true,
        serverSide: false,
        ajax: {
            url: "{{ route('shu.data') }}",
            dataSrc: '',
            data: function (d) {
                d.start_date = $('#start_date').val();
                d.end_date = $('#end_date').val();
            }
        },
        columns: [
            { data: 'nama' },
            {
                data: 'total_simpanan',
                render: function (data) {
                    return 'Rp ' + parseFloat(data).toLocaleString('id-ID');
                }
            },
            {
                data: 'pengkalisimpanan',
                render: function (data) {
                    return parseFloat(data).toLocaleString('id-ID', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
                }
            },
            {
                data: 'shu_simpanan',
                render: function (data) {
                    return 'Rp ' + parseFloat(data).toLocaleString('id-ID', { minimumFractionDigits: 2 });
                }
            },
            {
                data: 'total_pinjaman',
                render: function (data) {
                    return 'Rp ' +parseFloat(data).toLocaleString('id-ID');
                }
            },
            {
                data: 'pengkalipinjaman',
                render: function (data) {
                    return parseFloat(data).toLocaleString('id-ID', { minimumFractionDigits: 2});
                }
            },
            {
                data: 'shu_pinjaman',
                render: function (data) {
                    return 'Rp ' + parseFloat(data).toLocaleString('id-ID', { minimumFractionDigits: 2 });
                }
            },
            {
                data: 'total_shu',
                render: function (data) {
                    return 'Rp ' + parseFloat(data).toLocaleString('id-ID', { minimumFractionDigits: 2 });
                }
            },
        ]
    });

    // Submit filter form
    $('#filterForm').on('submit', function (e) {
        e.preventDefault();
        table.ajax.reload();
    });

    // Tombol reset filter
    $('#resetBtn').on('click', function () {
        $('#start_date').val('');
        $('#end_date').val('');
        table.ajax.reload();
    });

        $('#hitungShuBtn').on('click', function () {
        $.ajax({
            url: "{{ route('shu.hitung') }}",
            method: 'POST',
            data: {
                _token: '{{ csrf_token() }}',
                start_date: $('#start_date').val(),
                end_date: $('#end_date').val()
            },
            beforeSend: function () {
                $('#hitungShuBtn').prop('disabled', true).text('Menghitung...');
            },
            success: function (response) {
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil',
                    text: response.message || 'SHU berhasil dihitung.',
                    confirmButtonColor: '#3085d6'
                });
                table.ajax.reload();
            },
            error: function (xhr) {
                const error = xhr.responseJSON?.message || 'Terjadi kesalahan saat menghitung SHU.';
                Swal.fire({
                    icon: 'error',
                    title: 'Gagal',
                    text: error,
                    confirmButtonColor: '#d33'
                });
            },
            complete: function () {
                $('#hitungShuBtn').prop('disabled', false).text('Hitung SHU');
            }
        });
    });
});
</script>

<script>
document.getElementById('resetBtn').addEventListener('click', function () {
    fetch("{{ route('shu.reset') }}", {
        method: "POST",
        headers: {
            "X-CSRF-TOKEN": "{{ csrf_token() }}",
            "Content-Type": "application/json"
        },
    })
    .then(response => response.json())
    .then(data => {
        Swal.fire({
            icon: 'success',
            title: 'Berhasil!',
            text: data.message,
            confirmButtonColor: '#28a745'
        }).then(() => {
            location.reload(); // Refresh setelah alert ditutup
        });
    })
    .catch(error => {
        Swal.fire({
            icon: 'error',
            title: 'Gagal!',
            text: 'Terjadi kesalahan saat mereset data.',
        });
        console.error(error);
    });
});
</script>



@endpush
