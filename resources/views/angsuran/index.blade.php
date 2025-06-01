@extends('layouts.app')

@section('title', 'Data Angsuran')

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
   
        <table id="angsuran-table" class="table table-striped display responsive" >
          <thead>
            <tr>
              <th>Nama Anggota</th>
              <th>Jenis Pinjaman</th>
              <th>Tenor Ke</th>
              <th>Nominal Tenor</th>
              <th>Total Pinjaman</th>
              <th>Jasa</th>
              <th>Nominal Bayar</th>
              <th>Tgl Bayar</th>
              <th>Tgl Input</th>
              <th>Status</th>
              <th>Aksi</th>
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

<!-- Modal Bayar Angsuran -->
<div class="modal fade" id="angsuranModal" tabindex="-1" aria-labelledby="angsuranModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="angsuranModalLabel">Bayar Angsuran</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form id="angsuranForm" method="POST" action="">
        @csrf
        @method('PUT')
        <div class="modal-body">
          <input type="hidden" name="angsuran_id" id="angsuran_id">
          <div class="mb-3">
            <label class="form-label">Rincian Pembayaran</label>
            <div class="mb-2">
              <span>Nominal Angsuran: </span>
              <span id="label_nominal_angsuran" class="fw-bold">0</span>
            </div>
            <div class="mb-2">
              <span>Jasa: </span>
              <span id="jasa" class="fw-bold"></span>
            </div>
            <div class="mb-2">
              <span>Nominal Jasa: </span>
              <span id="nominal_jasa" class="fw-bold"></span>
            </div>
            <div class="mb-2">
              <span>Total Bayar: </span>
              <span id="label_total_bayar" class="fw-bold">0</span>
            </div>
          </div>
          <div class="mb-3">
            <label for="total_bayar" class="form-label">Nominal Bayar</label>
            <input type="number" class="form-control" id="total_bayar" name="total_bayar" required readonly>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
          <button type="submit" class="btn btn-primary">Bayar</button>
        </div>
      </form>
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
  // Inisialisasi datepicker
  $('#filter_tgl_pinjam1, #filter_tgl_pinjam2').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true,
    todayHighlight: true
  });

  // Inisialisasi DataTable dengan serverSide processing
  var table = $('#angsuran-table').DataTable({
    processing: true,
    serverSide: true,
    ajax: {
      url: "{{ route('angsuran.getDataAngsuran') }}",
      data: function (d) {
        d.nama_anggota = $('#filter_nama_anggota').val();
        d.jenis_pinjaman = $('#filter_jenis_pinjaman').val();
        d.tgl_pinjam1 = $('#filter_tgl_pinjam1').val();
        d.tgl_pinjam2 = $('#filter_tgl_pinjam2').val();
      }
    },
    columns: [
      { data: 'nama_anggota', name: 'anggota.nama' },
      { data: 'jenis_pinjaman', name: 'pinjaman.jenis_pinjaman' },
      { data: 'angsuran_ke', name: 'angsuran_ke' },
      {
        data: 'nominal_angsuran',
        name: 'nominal_angsuran',
        render: function (data) {
          return 'Rp ' + parseInt(data).toLocaleString('id-ID');
        }
      },
      {
        data: 'total_pinjaman',
        name: 'total_pinjaman',
        render: function (data) {
          return 'Rp ' + parseInt(data).toLocaleString('id-ID');
        }
      },
      { data: 'jasa', name: 'jasa' },
      { data: 'nominal_bayar', name: 'nominal_bayar' },
      { data: 'tgl_bayar', name: 'tgl_bayar' },
      { data: 'tgl_input', name: 'tgl_input' },
      {
        data: 'status_bayar',
        name: 'status_bayar',
        render: function (data) {
          return data == '1' ?
            '<span class="badge bg-success">Lunas</span>' :
            '<span class="badge bg-warning">Belum</span>';
        }
      },
      {
        data: null,
        name: 'action',
        orderable: false,
        searchable: false,
        render: function (data, type, row) {
          if (row.status_bayar == '1') {
            return '<button class="btn btn-sm btn-secondary" disabled>Sudah Dibayar</button>';
          } else {
            return '<button class="btn btn-sm btn-primary btn-bayar" ' +
              'data-id="' + row.id + '" ' +
              'data-nominal="' + row.nominal_angsuran + '" ' +
              'data-jasa="' + row.jasa + '" ' +
              'data-nominal_bayar="' + row.nominal_bayar + '" ' +
              'data-total_pinjaman="' + row.total_pinjaman + '">' +
              'Bayar</button>';
          }
        }
      }
    ],
    language: {
      search: "Cari:",
    },
  });

  // Tombol Filter klik untuk reload data
  $('#btnFilter').click(function () {
    table.draw();
  });

  // Event klik tombol Bayar
  $(document).on('click', '.btn-bayar', function () {
    var id = $(this).data('id');
    var nominal = parseInt($(this).data('nominal'));
    var jasaRaw = $(this).data('jasa');
    var nominalBayarRaw = $(this).data('nominal_bayar');
    var totalPinjaman = parseInt($(this).data('total_pinjaman'));

    var nominalBayar = nominalBayarRaw ? parseInt(nominalBayarRaw) : nominal;
    var jasa = parseFloat(jasaRaw) * 100; // konversi ke persen untuk tampilan
    var nominalJasa = totalPinjaman * parseFloat(jasaRaw); // nominal jasa

    // Set nilai di modal
    $('#angsuran_id').val(id);
    $('#angsuranForm').attr('action', '/angsuran/' + id);
    $('#label_nominal_angsuran').text('Rp ' + nominal.toLocaleString('id-ID'));
    $('#label_total_bayar').text('Rp ' + nominalBayar.toLocaleString('id-ID'));
    $('#total_bayar').val(nominalBayar);

    // Update jasa dan nominal jasa di modal
    $('#jasa').text(jasa.toFixed(2) + '%');
    $('#nominal_jasa').text('Rp ' + nominalJasa.toLocaleString('id-ID'));

    // Tampilkan modal
    var angsuranModal = new bootstrap.Modal(document.getElementById('angsuranModal'));
    angsuranModal.show();
  });

  // Submit form pembayaran angsuran
  $('#angsuranForm').submit(function (e) {
    e.preventDefault();
    var form = $(this);
    var url = form.attr('action');

    $.ajax({
      type: "POST",
      url: url,
      data: form.serialize(),
      success: function (response) {
        var angsuranModalEl = document.getElementById('angsuranModal');
        var angsuranModal = bootstrap.Modal.getInstance(angsuranModalEl);
        angsuranModal.hide();
        table.draw();

        Swal.fire({
          icon: 'success',
          title: 'Sukses',
          text: 'Pembayaran berhasil disimpan',
          confirmButtonText: 'OK'
        });
      },
      error: function (xhr) {
        Swal.fire({
          icon: 'error',
          title: 'Error',
          text: 'Terjadi kesalahan: ' + xhr.responseText,
          confirmButtonText: 'OK'
        });
      }
    });
  });
});
</script>
@endpush