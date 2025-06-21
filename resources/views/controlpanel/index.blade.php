@extends('layouts.app')
@section('title', 'Control Panel')

@section('content')
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h4 class="mb-0">Control Panel</h4>
                </div>
                <div class="card-body">

                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            {{ session('success') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif

                    {{-- Jenis Simpanan --}}
                    <section class="mb-5">
                        <h5 class="mb-3">Jenis Simpanan</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>Nama</th>
                                        <th style="width: 120px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($jenisSimpanan as $item)
                                    <tr>
                                        <form action="{{ route('controlpanel.updateJenisSimpanan', $item->id) }}" method="POST" class="d-flex">
                                            @csrf
                                            @method('PUT')
                                            <td>
                                                <input type="text" name="jenis" value="{{ old('jenis', $item->jenis) }}" class="form-control" required>
                                            </td>
                                            <td>
                                                <button type="submit" class="btn btn-primary btn-sm w-100">Simpan</button>
                                            </td>
                                        </form>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </section>

                    {{-- Jenis Pinjaman --}}
                    <section class="mb-5">
                        <h5 class="mb-3">Jenis Pinjaman</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>Nama</th>
                                        <th style="width: 120px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($jenisPinjaman as $item)
                                    <tr>
                                        <form action="{{ route('controlpanel.updateJenisPinjaman', $item->id) }}" method="POST" class="d-flex">
                                            @csrf
                                            @method('PUT')
                                            <td>
                                                <input type="text" name="jenis" value="{{ old('jenis', $item->jenis) }}" class="form-control" required>
                                            </td>
                                            <td>
                                                <button type="submit" class="btn btn-primary btn-sm w-100">Simpan</button>
                                            </td>
                                        </form>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </section>

                    {{-- Jasa --}}
                    <section class="mb-5">
                        <h5 class="mb-3">Jasa</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>nilai dikali %</th>
                                        <th>Input</th>
                                        <th>Tanggal Update</th>
                                        <th style="width: 120px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($jasa as $item)
                                    <tr>
                                        <form action="{{ route('controlpanel.updateJasa', $item->jasa) }}" method="POST" class="d-flex">
                                            @csrf
                                            @method('PUT')
                                            <td>
                                                <input type="text" name="jasa" value="{{ old('jasa', $item->jasa) }}" class="form-control" required>
                                            </td>
                                            <td>
                                                <input type="text" name="input" value="{{ old('input', $item->input_by) }}" class="form-control" disabled>
                                            </td>
                                            <td>
                                                <input type="text" name="tgl_upddate" value="{{ old('tgl_upddate', $item->tgl_update) }}" class="form-control datepicker" disabled>
                                            </td>
                                            <td>
                                                <button type="submit" class="btn btn-primary btn-sm w-100">Update</button>
                                            </td>
                                        </form>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </section>

                    {{-- Provisi --}}
                    <section>
                        <h5 class="mb-3">Provisi</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>nilai dikali %</th>
                                        <th>Input</th>
                                        <th>Tanggal Update</th>
                                        <th style="width: 120px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($provisi as $item)
                                    <tr>
                                        <form action="{{ route('controlpanel.updateProvisi', $item->provisi) }}" method="POST" class="d-flex">
                                            @csrf
                                            @method('PUT')
                                            <td>
                                                <input type="text" name="provisi" value="{{ old('nama', $item->provisi) }}" class="form-control" required>
                                            </td>
                                            <td>
                                                <input type="text" name="input" value="{{ old('input', $item->input_by) }}" class="form-control" disabled>
                                            </td>
                                            <td>
                                                <input type="text" name="tgl_upddate" value="{{ old('tgl_upddate', $item->tgl_update) }}" class="form-control datepicker" disabled>
                                            </td>
                                            <td>
                                                <button type="submit" class="btn btn-primary btn-sm w-100">Simpan</button>
                                            </td>
                                        </form>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </section>

                    {{-- Jenis Pengeluaran --}}
                    <section>
                        <h5 class="mb-3">Pengeluaran</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle"id="pengeluaranTable">
                                <thead class="table-light">
                                    <tr>
                                        <th>Jenis Pengeluaran</th>
                                        <th>Rate Pengeluaran %</th>
                                        <th>Input By</th>
                                        <th>Tanggal Update</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <form action="{{ route('controlpanel.savePengeluaran') }}" method="POST" id="pengeluaranForm">
                                        @csrf
                                    @foreach($pengeluaran as $item)
                                    <tr data-id="{{ $item->id }}">
                                        <td contenteditable="true" class="editable" data-field="jenisPengeluaran">{{ $item->jenis_pengeluaran }}</td>
                                        <td contenteditable="true" class="editable" data-field="ratePengeluaran">{{ $item->rate_pengeluaran }}</td>
                                        <td>{{ $item->input_by }}</td>
                                        <td>{{ $item->tgl_input }}</td>
                                        <td>
                                            <button class="btn btn-danger btn-sm btn-delete">Delete</button>
                                        </td>
                                    </tr>
                                    @endforeach
                                    </form>
                                </tbody>
                            </table>

                            <button id="btnAddRow" class="btn btn-success mb-3">Add Row</button>
                            <button id="btnSave" class="btn btn-primary mb-3">Save</button>
                        </div>
                    </div>
                </section>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<!-- Bootstrap 5 JS dan dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Bootstrap Datepicker JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    $(document).ready(function() {
        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            autoclose: true,
            todayHighlight: true,
            orientation: "bottom auto"
        });
    });
</script>    
<script>
    // Tambahkan di atas script Anda
    const userNama = "{{ auth()->user()->nama }}";
    const currentDate = "{{ now()->format('Y-m-d') }}";
</script>
<script>
// Variabel global
const pengeluaranTable = document.getElementById('pengeluaranTable');
const btnAddRow = document.getElementById('btnAddRow');
const btnSave = document.getElementById('btnSave');

// Simpan ID baris yang akan diinsert, update, dan delete
let rowsToInsert = new Set();
let rowsToUpdate = new Set();
let rowsToDelete = new Set();

// Event listener untuk tombol tambah baris
btnAddRow.addEventListener('click', () => {
    const newId = 'new-' + Date.now();
    const newRow = document.createElement('tr');
    newRow.setAttribute('data-id', newId);
    
    newRow.innerHTML = `
        <td contenteditable="true" data-field="jenisPengeluaran"></td>
        <td contenteditable="true" data-field="ratePengeluaran"></td>
        <td>${userNama}</td>
        <td>${new Date().toLocaleDateString()}</td>
        <td>
            <button class="btn btn-danger btn-sm btn-delete">Delete</button>
        </td>
    `;
    
    pengeluaranTable.querySelector('tbody').appendChild(newRow);
    rowsToInsert.add(newId);
    
    // Tambahkan event listener untuk delete
    newRow.querySelector('.btn-delete').addEventListener('click', function() {
        if (rowsToInsert.has(newId)) {
            rowsToInsert.delete(newId);
        }
        newRow.remove();
    });
    
    // Tambahkan event listener untuk edit
    newRow.querySelectorAll('[contenteditable]').forEach(editable => {
        editable.addEventListener('input', () => {
            if (!rowsToInsert.has(newId)) {
                rowsToUpdate.add(newId);
            }
        });
    });
});

// Event listener untuk delete baris yang sudah ada
document.querySelectorAll('.btn-delete').forEach(button => {
    button.addEventListener('click', function() {
        const row = this.closest('tr');
        const id = row.dataset.id;
        
        if (id.startsWith('new-')) {
            rowsToInsert.delete(id);
        } else {
            rowsToDelete.add(parseInt(id));
        }
        
        row.remove();
    });
});

// Event listener untuk edit baris yang sudah ada
document.querySelectorAll('.editable').forEach(editable => {
    editable.addEventListener('input', function() {
        const row = this.closest('tr');
        const id = row.dataset.id;
        
        if (!id.startsWith('new-')) {
            rowsToUpdate.add(parseInt(id));
        }
    });
});

// Event listener untuk save
btnSave.addEventListener('click', () => {
    const dataToInsert = [];
    const dataToUpdate = [];
    const dataToDelete = Array.from(rowsToDelete);

    // Proses baris baru (insert)
    rowsToInsert.forEach(tempId => {
        const row = pengeluaranTable.querySelector(`tr[data-id="${tempId}"]`);
        if (row) {
            const jenisEl = row.querySelector('[data-field="jenisPengeluaran"]');
            const rateEl = row.querySelector('[data-field="ratePengeluaran"]');

            if (jenisEl && rateEl) {
                const jenis = jenisEl.textContent.trim();
                let rateText = rateEl.textContent.trim();
                
                // Handle nilai kosong dan format desimal
                if (rateText === '') rateText = '0';
                rateText = rateText.replace(',', '.');
                const rate = parseFloat(rateText);

                if (jenis && !isNaN(rate)) {
                    dataToInsert.push({
                        jenis_pengeluaran: jenis,
                        rate_pengeluaran: rate
                    });
                } else {
                    alert(`Data tidak valid pada baris baru: ${jenis} - ${rateText}`);
                    return;
                }
            }
        }
    });

    // Proses baris yang diupdate
    rowsToUpdate.forEach(id => {
        const row = pengeluaranTable.querySelector(`tr[data-id="${id}"]`);
        if (row) {
            const jenisEl = row.querySelector('[data-field="jenisPengeluaran"]');
            const rateEl = row.querySelector('[data-field="ratePengeluaran"]');

            if (jenisEl && rateEl) {
                const jenis = jenisEl.textContent.trim();
                let rateText = rateEl.textContent.trim();
                
                if (rateText === '') rateText = '0';
                rateText = rateText.replace(',', '.');
                const rate = parseFloat(rateText);

                if (jenis && !isNaN(rate)) {
                    dataToUpdate.push({
                        id: id,
                        jenis_pengeluaran: jenis,
                        rate_pengeluaran: rate
                    });
                } else {
                    alert(`Data tidak valid pada baris #${id}: ${jenis} - ${rateText}`);
                    return;
                }
            }
        }
    });

    // Kirim data ke server
    fetch('{{ route("controlpanel.savePengeluaran") }}', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        body: JSON.stringify({
            insert: dataToInsert,
            update: dataToUpdate,
            delete: dataToDelete
        })
    })
        .then(response => {
            if (!response.ok) {
                return response.json().then(err => {
                    throw new Error(err.message || 'Terjadi kesalahan server');
                });
            }
            return response.json();
        })
        .then(result => {
            if (result.success) {
                Swal.fire({
                    icon: 'success',
                    title: 'Berhasil!',
                    text: 'Data berhasil disimpan!',
                    confirmButtonText: 'OK',
                    timer: 3000,
                    timerProgressBar: true
                }).then(() => {
                    location.reload();
                });
            } else {
                const errorMsg = result.message || result.errors || 'Terjadi kesalahan tidak diketahui';
                
                // Format error jika ada multiple errors
                let errorContent = '';
                if (typeof errorMsg === 'object') {
                    errorContent = Object.values(errorMsg).flat().join('<br>');
                } else {
                    errorContent = errorMsg;
                }
                
                Swal.fire({
                    icon: 'error',
                    title: 'Gagal!',
                    html: `<strong>Gagal menyimpan data:</strong><br>${errorContent}`,
                    confirmButtonText: 'OK',
                });
            }
        })
        .catch(error => {
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                html: `<strong>Terjadi kesalahan:</strong><br>${error.message || error}`,
                confirmButtonText: 'OK',
            });
            console.error('Error:', error);
        });
    });
</script>

@endpush