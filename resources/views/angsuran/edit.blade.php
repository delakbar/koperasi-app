@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Data Angsuran</h1>
    <table id="angsuran-table" class="table table-bordered table-striped" style="width:100%">
        <thead>
            <tr>
                <th>No</th>
                <th>Pinjaman ID</th>
                <th>Angsuran Ke</th>
                <th>Nominal Angsuran</th>
                <th>Total Pinjaman</th>
                <th>Tanggal Bayar</th>
                <th>Tanggal Input</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>

<!-- Modal Bayar Angsuran -->
<div class="modal fade" id="angsuranModal" tabindex="-1" aria-labelledby="angsuranModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="formBayarAngsuran" method="POST">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="angsuranModalLabel">Bayar Angsuran</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="angsuran_id" id="angsuran_id">
                    <p>Apakah Anda yakin ingin membayar angsuran ini?</p>
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
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.dataTables.min.css">
@endpush

@push('scripts')
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
$(document).ready(function() {
    var table = $('#angsuran-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('angsuran.getDataAngsuran') }}",
        columns: [
            { data: 0, title: "No" },
            { data: 1, title: "Pinjaman ID" },
            { data: 2, title: "Angsuran Ke" },
            { data: 3, title: "Nominal Angsuran" },
            { data: 4, title: "Total Pinjaman" },
            { data: 5, title: "Tanggal Bayar" },
            { data: 6, title: "Tanggal Input" },
            { data: 7, title: "Aksi", orderable: false, searchable: false }
        ]
    });

    // Saat modal dibuka, isi input hidden dengan id angsuran
    var angsuranModal = document.getElementById('angsuranModal');
    angsuranModal.addEventListener('show.bs.modal', function (event) {
        var button = event.relatedTarget;
        var angsuranId = button.getAttribute('data-id');
        var inputAngsuranId = angsuranModal.querySelector('#angsuran_id');
        inputAngsuranId.value = angsuranId;
    });

    // Submit form bayar angsuran via AJAX
    $('#formBayarAngsuran').submit(function(e) {
        e.preventDefault();
        var form = $(this);
        var angsuranId = form.find('#angsuran_id').val();

        $.ajax({
            url: '/angsuran/bayar/' + angsuranId, // sesuaikan route bayar angsuran
            method: 'POST',
            data: form.serialize(),
            success: function(response) {
                $('#angsuranModal').modal('hide');
                table.ajax.reload(null, false);
            },
            error: function(xhr) {
                alert('Gagal membayar angsuran.');
            }
        });
    });
});
</script>
@endpush
