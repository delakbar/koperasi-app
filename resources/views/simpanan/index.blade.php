@extends('layouts.app')

@section('title', 'Simpanan')

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
            <select class="form-select" id="filter_jenis_simpanan">
              <option value="">-- Pilih Jenis Simpanan --</option>
               @foreach ($jenis_simpanan as $item)
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
                <div class="card-header">Data Simpnan</div>
                <div class="card-body">
                <a href="{{ route('simpanan.create') }}" class="btn btn-primary mb-3 mt-3">Tambah Simpanan</a>
                <table id="simpanan-table" class="table table-bordered display responsive" >
                    <thead class="table-dark">
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Jenis Simpanan</th>
                            <th>Nominal Simpanan</th>
                            <th>Input By</th>
                            <th>Tanggal Update</th>
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
$(function() {
    // Inisialisasi datepicker
    $('#filter_tgl_pinjam1, #filter_tgl_pinjam2').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
        clearBtn: true
    });

    // Inisialisasi DataTable dengan serverSide dan filter custom
    var table = $('#simpanan-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: '{{ route("simpanan.data") }}',
            data: function(d) {
                d.filter_nama_anggota = $('#filter_nama_anggota').val();
                d.filter_jenis_simpanan = $('#filter_jenis_simpanan').val();
                d.filter_tgl_pinjam1 = $('#filter_tgl_pinjam1').val();
                d.filter_tgl_pinjam2 = $('#filter_tgl_pinjam2').val();
            }
        },
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
        ]
    });

    // Tombol filter reload data
    $('#btnFilter').on('click', function() {
        table.ajax.reload();
    });
});
</script>
@endpush
