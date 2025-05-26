@extends('layouts.app')

@section('title', 'pelunasan')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">

        <!-- Informasi Ringkasan Pinjaman -->
        <div class="row mb-4">
            <div class="col-md-3 mb-3">
                <div class="card shadow-sm bg-light h-100 info-card hover-shadow">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="bi bi-cash-stack fs-2 text-primary"></i>
                        </div>
                        <div>
                            <h6 class="card-subtitle mb-1 text-muted">Sisa Pinjaman</h6>
                            <h5 class="card-title mb-0" id="totalNominal">Rp 0</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 mb-3">
                <div class="card shadow-sm bg-light h-100 info-card hover-shadow">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="bi bi-clock-history fs-2 text-warning"></i>
                        </div>
                        <div>
                            <h6 class="card-subtitle mb-1 text-muted">Sisa jumlah Angsuran</h6>
                            <h5 class="card-title mb-0" id="sisaAngsuran">0</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tabel Angsuran -->
        <div class="card">
            <div class="card-header">Detail Angsuran</div>
            <div class="card-body">
                <table id="tablePinjaman" class="table table-striped table-hover" style="width:100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Angsuran ke</th>
                            <th>Nominal Angsuran</th>
                            <th>Tgl bayar</th>
                            <th>Status Bayar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Data akan diisi oleh DataTables -->
                    </tbody>
                </table>
            </div>
        </div>
        <div class="mt-3 d-flex justify-content-end">
            <a href="#" id="btnBayar" class="btn btn-primary">Bayar Pinjaman</a>
        </div>
        <div id="messageBayar" class="mt-2"></div>

    </div>
</div>
<!-- Modal Konfirmasi Pembayaran -->
<div class="modal fade" id="confirmBayarModal" tabindex="-1" aria-labelledby="confirmBayarModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmBayarModalLabel">Konfirmasi Pembayaran</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Tutup"></button>
      </div>
      <div class="modal-body" id="nominalBayar">
        <p>Apakah Anda yakin ingin membayar pinjaman ini?</p>
        <p><strong>Total Nominal:</strong> <span id="totalNominalBayar">Rp 0</span></p>        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
        <button type="button" class="btn btn-primary" id="confirmBayarBtn">Ya, Bayar</button>
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
    function formatRupiah(angka) {
        return 'Rp ' + angka.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }

    function fetchUnpaidDetails(pinjamanId) {
        return $.ajax({
            url: '/pinjaman/unpaid-details/' + pinjamanId,
            method: 'GET',
            dataType: 'json'
        });
    }

    $(document).ready(function() {
        var pinjamanId = '{{ $pinjaman->id }}'; // Pastikan variabel ini tersedia di Blade

        var table = $('#tablePinjaman').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: '{{ route("pinjaman.getpinjaman", ["id" => $pinjaman->id]) }}',
                type: 'POST',
                data: function(d) {
                    d._token = '{{ csrf_token() }}';
                }
            },
            columns: [
                { data: 0, name: 'id' },
                { data: 1, name: 'anggota_id' },
                { data: 2, name: 'angsuran_ke' },
                { data: 3, name: 'nominal_angsuran' },
                { data: 4, name: 'tgl_bayar' },
                { data: 5, name: 'status_bayar' },
            ],
            drawCallback: function(settings) {
                // Ambil data total nominal dan sisa angsuran dari server
                fetchUnpaidDetails(pinjamanId).done(function(response) {
                    var totalNominal = parseInt(response.total_nominal);
                    var sisaAngsuran = parseInt(response.remaining_installments);
                   
                    // Update UI dengan data yang diterima
                    $('#totalNominal').text(formatRupiah(totalNominal));
                    $('#sisaAngsuran').text(sisaAngsuran);
                });
            }
        });
    });
    $(document).ready(function() {
    var bayarModal = new bootstrap.Modal(document.getElementById('confirmBayarModal'));

    $('#btnBayar').click(function() {
        var totalNominalText = $('#totalNominal').text();
        $('#totalNominalBayar').text(totalNominalText);
        bayarModal.show();
    });

    $('#confirmBayarBtn').click(function() {
        $.ajax({
            url: '{{ route("pinjaman.bayar", ["id" => $pinjaman->id]) }}',
            type: 'POST',
            data: {
                _token: '{{ csrf_token() }}'
                // tambahkan data lain jika diperlukan
            },
            success: function(response) {
                if (response.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Berhasil',
                        text: response.message,
                        confirmButtonText: 'OK'
                    }).then(() => {
                        bayarModal.hide();
                        location.reload();
                    });
                } else {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Peringatan',
                        text: response.message,
                        confirmButtonText: 'OK'
                    }).then(() => {
                        bayarModal.hide();
                    });
                }
            },
            error: function(xhr) {
                let errMsg = 'Terjadi kesalahan saat melakukan pembayaran.';
                if (xhr.responseJSON && xhr.responseJSON.message) {
                    errMsg = xhr.responseJSON.message;
                }
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: errMsg,
                    confirmButtonText: 'OK'
                }).then(() => {
                    bayarModal.hide();
                });
            }
        });
    });
});
</script>
@endpush
