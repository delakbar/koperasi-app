@extends('layouts.app')

@section('title', 'Pinjaman')

@section('content')
<div class="row justify-content-center">
  <div class="col-md-12 mb-3">
    <div class="card">
      <div class="card-body">
        <h6>Filter by</h6>
        <form id="filterForm" class="row g-2">
          <div class="col-md-3">
            <select class="form-select" id="filter_nama_anggota">
              <option value="">-- Pilih Anggota --</option>
              @foreach($anggota as $a)
                <option value="{{ $a->nama }}">{{ $a->nama }}</option>
              @endforeach
            </select>
          </div>
          <div class="col-md-3">
            <select class="form-select" id="filter_jenis_pinjaman">
              <option value="">-- Pilih Jenis Pinjaman --</option>
               @foreach ($jenis_pinjaman as $item)
                  <option value="{{ $item->jenis }}">{{ $item->jenis }}</option>
                @endforeach
            </select>
          </div>
            <div class="col-md-2">
                <input type="text" class="form-control filter_tgl_pinjam1" id="filter_tgl_pinjam1" name="tgl_pinjam1" placeholder="Tgl awal" autocomplete="off" />
            </div>
            <div class="col-md-2">
                <input type="text" class="form-control filter_tgl_pinjam2" id="filter_tgl_pinjam2" name="tgl_pinjam2" placeholder="Tgl Akhir" autocomplete="off" />
            </div>
            <div class="col-md-2 d-grid">
                <button type="button" id="btnFilter" class="btn btn-primary">Filter</button>
            </div>
            </form>
            </div>
        </div>
    </div>

    <!-- Toast Container -->
            <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 1080">
            <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                <strong class="me-auto" id="toastTitle">Info</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
                <div class="toast-body" id="toastBody">
                <!-- Pesan toast akan muncul di sini -->
                </div>
            </div>
            </div>
            <div class="col-md-12">
                <div class="card">
                <div class="card-header">Data Angsuran</div>
                <div class="card-body">
                <a href="{{ route('pinjaman.create') }}" class="btn btn-primary mb-3 mt-3">Tambah Pinjaman</a>
                <table id= "pinjaman-table" class="table table-bordered display responsive" >
                    <thead class="table-dark">
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
$(document).ready(function() {
    // Inisialisasi Bootstrap Datepicker pada input tanggal filter
    $('#filter_tgl_pinjam1, #filter_tgl_pinjam2').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
        clearBtn: true
    });

    // Inisialisasi DataTable dengan serverSide processing dan filter
    var table = $('#pinjaman-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: '{{ route("pinjaman.data") }}',
            data: function(d) {
                d.filter_jenis_pinjaman = $('#filter_jenis_pinjaman').val();
                d.filter_tgl_pinjam1 = $('#filter_tgl_pinjam1').val();
                d.filter_tgl_pinjam2 = $('#filter_tgl_pinjam2').val();
            }
        },
        columns: [
            { data: 0, name: 'id' },
            { data: 1, name: 'anggota_id' },
            { data: 2, name: 'nominal_pinjaman' },
            { data: 3, name: 'jenis_pinjaman' },
            { data: 5, name: 'jml_angsuran' },
            { data: 4, name: 'tgl_pinjam' },
            { render: function(data, type, row) {
                if (row[8] == '0') {
                    return '<button class="btn btn-sm btn-secondary" disabled>Lunas</button>';
                } else {
                    var urlEdit = '{{ url("pinjaman") }}/' + row[9] + '/edit';
                    return `<a href="${urlEdit}" class="btn btn-sm btn-success btn-pelunasan" data-id="${row[9]}">Pelunasan</a>`;
                }
            }}
        ],
        order: [[0, 'desc']]
    });

    // Event handler tombol filter: reload DataTable hanya saat tombol ini diklik
    $('#btnFilter').on('click', function() {
        table.ajax.reload();
    });

    // **Tidak ada event reload otomatis saat tanggal dipilih**
    // Jadi, pengguna bebas memilih tanggal tanpa DataTable reload otomatis
});
</script>
@endpush