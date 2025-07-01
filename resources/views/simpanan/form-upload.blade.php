@extends('layouts.app')

@section('title', 'Upload Data')

@section('content')
<div class="container py-5">

    <h5 class="mb-4 fw-bold">Upload Data</h5>

    <ul class="nav nav-tabs nav-fill mb-4 rounded border" id="uploadTabs" role="tablist" style="overflow: hidden;">
        <li class="nav-item" role="presentation">
            <button class="nav-link active d-flex justify-content-center align-items-center gap-2" id="simpanan-tab" data-bs-toggle="tab" data-bs-target="#simpanan" type="button" role="tab" aria-controls="simpanan" aria-selected="true">
                <i class="bi bi-cash-stack"></i> Simpanan / Pinjaman Gaji
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link d-flex justify-content-center align-items-center gap-2" id="remun-tab" data-bs-toggle="tab" data-bs-target="#remun" type="button" role="tab" aria-controls="remun" aria-selected="false">
                <i class="bi bi-bar-chart-line"></i> Remun
            </button>
        </li>
    </ul>

    <div class="tab-content" id="uploadTabContent">

        {{-- TAB 1: Simpanan / Pinjaman Gaji --}}
        <div class="tab-pane fade show active" id="simpanan" role="tabpanel" aria-labelledby="simpanan-tab">
            <div class="card shadow border-0 mb-5">
                <div class="card-header d-flex align-items-center">
                    <i class="bi bi-upload me-2"></i>
                    <span class="fw-semibold">Upload File Simpanan / Pinjaman Gaji</span>
                </div>
                <div class="card-body">
                    <div class="mb-4 text-center">
                        <a href="{{ asset('templates/template-upload.xlsx') }}" class="btn btn-outline-success btn-sm px-4" download>
                            <i class="bi bi-download me-1"></i> Download Template Excel
                        </a>
                    </div>
                    <form id="uploadFormSimpanan" action="{{ route('upload.simpanan') }}" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate>
                        @csrf
                        <div class="row g-2 align-items-end">
                            <div class="col">
                                <label for="file" class="form-label fw-semibold">Pilih File Excel</label>
                                <input class="form-control" type="file" name="file" id="file" accept=".xlsx,.xls" required>
                                <div class="invalid-feedback">Silakan pilih file Excel.</div>
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary d-flex align-items-center">
                                    <span id="btnTextSimpanan">Upload</span>
                                    <span id="spinnerSimpanan" class="spinner-border spinner-border-sm d-none ms-2" role="status" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            {{-- Log Upload Simpanan --}}
            @if (!empty($log))
            <div id="import-log">
                <h4 class="mb-3">📄 Log</h4>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped align-middle">
                        <thead class="table-dark">
                            <tr>
                                <th>Baris Excel</th>
                                <th>Nama</th>
                                <th>Anggota ID</th>
                                <th>Log Simpanan</th>
                                <th>Update Angsuran</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($log as $item)
                            <tr>
                                <td>{{ $item['row'] }}</td>
                                <td>{{ $item['nama'] }}</td>
                                <td>{{ $item['anggota_id'] }}</td>
                                <td>
                                    <ul class="mb-0">
                                        @foreach ($item['simpanan'] as $logS)
                                            @php $isFailed = str_contains($logS, 'skipped'); @endphp
                                            <li style="color: {{ $isFailed ? 'red' : 'green' }}">
                                                {!! $isFailed ? '❌' : '✅' !!} {{ $logS }}
                                            </li>
                                        @endforeach
                                    </ul>
                                </td>
                                <td style="color: {{ $item['angsuran_update'] == 'success' ? 'green' : 'red' }}">
                                    {{ ucfirst($item['angsuran_update']) }}
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            @endif
        </div>

        {{-- TAB 2: Upload Remun --}}
        <div class="tab-pane fade" id="remun" role="tabpanel" aria-labelledby="remun-tab">
            <div class="card shadow border-0">
                <div class="card-header d-flex align-items-center">
                    <i class="bi bi-upload me-2"></i>
                    <span class="fw-semibold">Upload File Remun</span>
                </div>
                <div class="card-body">
                    <div class="mb-4 text-center">
                        <a href="{{ asset('templates/template-remun.xlsx') }}" class="btn btn-outline-success btn-sm px-4" download>
                            <i class="bi bi-download me-1"></i> Download Template Remun
                        </a>
                    </div>
                    <form id="uploadFormRemun" action="{{ route('upload.remun') }}" method="POST" enctype="multipart/form-data" class="needs-validation" novalidate>
                        @csrf
                        <div class="row g-2 align-items-end">
                            <div class="col">
                                <label for="file_remun" class="form-label fw-semibold">Pilih File Excel Remun</label>
                                <input class="form-control" type="file" name="file_remun" id="file_remun" accept=".xlsx,.xls" required>
                                <div class="invalid-feedback">Silakan pilih file Remun.</div>
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="btn btn-primary d-flex align-items-center">
                                    <span id="btnTextRemun">Upload</span>
                                    <span id="spinnerRemun" class="spinner-border spinner-border-sm d-none ms-2" role="status" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection

@push('styles')
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
@endpush

@push('scripts')
<script>
    // Validasi bootstrap
    (() => {
        'use strict';
        const forms = document.querySelectorAll('.needs-validation');
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    })();

    // Spinner Simpanan
    document.getElementById('uploadFormSimpanan').addEventListener('submit', function () {
        document.getElementById('btnTextSimpanan').textContent = 'Uploading...';
        document.getElementById('spinnerSimpanan').classList.remove('d-none');
    });

    // Spinner Remun
    document.getElementById('uploadFormRemun').addEventListener('submit', function () {
        document.getElementById('btnTextRemun').textContent = 'Uploading...';
        document.getElementById('spinnerRemun').classList.remove('d-none');
    });
</script>
@endpush
