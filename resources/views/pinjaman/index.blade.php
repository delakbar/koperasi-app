@extends('layouts.app')

@section('title', 'Data Pinjaman')

@section('content')
<div class="container">
    <h4 class="mb-3">Daftar Pinjaman</h4>

    <!-- Filter -->
    <div class="card mb-3">
        <div class="card-body">
            <form class="row g-2">
                <div class="col-md-3">
                    <select id="filter_nama_anggota" class="form-select">
                        <option value="">-- Pilih Anggota --</option>
                        @foreach($anggota as $a)
                            <option value="{{ $a->id }}">{{ $a->nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-3">
                    <select id="filter_jenis_pinjaman" class="form-select">
                        <option value="">-- Pilih Jenis Pinjaman --</option>
                        @foreach($jenis_pinjaman as $j)
                            <option value="{{ $j->jenis }}">{{ $j->jenis }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="filter_tgl_pinjam1" placeholder="Tgl Awal">
                </div>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="filter_tgl_pinjam2" placeholder="Tgl Akhir">
                </div>
                <div class="col-md-2 d-grid">
                    <button type="button" class="btn btn-primary" id="btnFilter">Filter</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Tabel -->
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Data Simpnan</div>
                <div class="card-body">
                     <a href="{{ route('pinjaman.create') }}" class="btn btn-primary mb-3 mt-3">Tambah Pinjaman</a>
            <table class="table table-bordered table-striped" id="pinjaman-table">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Anggota</th>
                        <th>Nominal</th>
                        <th>Jenis</th>
                        <th>Jumlah Angsuran</th>
                        <th>Tgl Pinjam</th>
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

<!-- Modal Bayar -->
<div class="modal fade" id="modalBayar" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Konfirmasi Pembayaran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <p><strong>Tenor:</strong> <span id="angsuranKe"></span></p>
                <p><strong>Nominal angsuran:</strong> <span id="nominalAngsuran"></span></p>
                <p><strong>Jasa:</strong> <span id="jasa"></span></p>
                <p><strong>Total Bayar:</strong> <span id="nominalBayar"></span></p>
            </div>
            <div class="modal-footer">
                <button id="konfirmasiBayarBtn" class="btn btn-success">Bayar Sekarang</button>
                <button class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            </div>
        </div>
    </div>
</div>
@endsection

@push('styles')
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
@endpush

@push('scripts')
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
function formatRupiah(angka) {
    return 'Rp ' + parseInt(angka).toLocaleString('id-ID');
}

$(document).ready(function() {
    $('#filter_tgl_pinjam1, #filter_tgl_pinjam2').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
        clearBtn: true
    });

    let modalBayar = new bootstrap.Modal(document.getElementById('modalBayar'));
    let selectedPinjamanId = null;

    let table = $('#pinjaman-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: '{{ route("pinjaman.data") }}',
            data: function(d) {
                d.filter_nama_anggota = $('#filter_nama_anggota').val();
                d.filter_jenis_pinjaman = $('#filter_jenis_pinjaman').val();
                d.filter_tgl_pinjam1 = $('#filter_tgl_pinjam1').val();
                d.filter_tgl_pinjam2 = $('#filter_tgl_pinjam2').val();
            }
        },
        columns: [
            { data: 0 },
            { data: 1 },
            { data: 2 },
            { data: 3 },
            { data: 5 },
            { data: 4 },
            {
                render: function(data, type, row) {
                    const id = row[9];
                    if (row[8] == '0') {
                        return '<button class="btn btn-sm btn-secondary" disabled>Lunas</button>';
                    }
                    return `
                        <div class="d-flex gap-1 flex-wrap justify-content-center">
                            <a href="/pinjaman/topup/${id}" class="btn btn-outline-warning btn-sm">
                                <i class="bi bi-arrow-up-circle"></i> Topup
                            </a>
                            <button class="btn btn-outline-primary btn-sm btn-bayar" data-id="${id}">
                                <i class="bi bi-wallet2"></i> Bayar
                            </button>
                            <a href="/pinjaman/${id}/edit" class="btn btn-outline-success btn-sm">
                                <i class="bi bi-check-circle"></i> Pelunasan
                            </a>
                        </div>
                    `;
                }
            }
        ],
        order: [[0, 'desc']]
    });

    $('#btnFilter').on('click', function() {
        table.ajax.reload();
    });

    // Buka modal bayar
    $(document).on('click', '.btn-bayar', function() {
        selectedPinjamanId = $(this).data('id');
        $.get(`/pinjaman/${selectedPinjamanId}/angsuran-pertama`, function(res) {
            if (res.success) {
                $('#angsuranKe').text(res.angsuran.angsuran_ke);
                $('#nominalAngsuran').text(formatRupiah(res.angsuran.nominal_angsuran));
                $('#jasa').text(res.angsuran.nominal_jasa ? formatRupiah(res.angsuran.nominal_jasa) : 'Rp 0');
                $('#nominalBayar').text(formatRupiah(res.angsuran.nominal_bayar));
                modalBayar.show();
            } else {
                Swal.fire('Info', res.message, 'info');
            }
        }).fail(function() {
            Swal.fire('Error', 'Gagal mengambil data angsuran.', 'error');
        });
    });

    // Konfirmasi bayar
    $('#konfirmasiBayarBtn').on('click', function() {
        $.post(`/pinjaman/${selectedPinjamanId}/bayar-satu`, {
            _token: '{{ csrf_token() }}'
        }, function(res) {
            if (res.success) {
                Swal.fire('Berhasil', res.message, 'success').then(() => {
                    modalBayar.hide();
                    table.ajax.reload();
                });
            } else {
                Swal.fire('Gagal', res.message, 'warning');
            }
        }).fail(function() {
            Swal.fire('Error', 'Terjadi kesalahan saat membayar.', 'error');
        });
    });
});
</script>
@endpush
