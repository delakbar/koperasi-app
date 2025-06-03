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
                                        <th>Nilai Dikali %</th>
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
                                            <td><input type="text" name="jasa" value="{{ old('jasa', $item->jasa) }}" class="form-control" required></td>
                                            <td><input type="text" value="{{ old('input', $item->input_by) }}" class="form-control" disabled></td>
                                            <td><input type="text" value="{{ old('tgl_upddate', $item->tgl_update) }}" class="form-control datepicker" disabled></td>
                                            <td><button type="submit" class="btn btn-primary btn-sm w-100">Update</button></td>
                                        </form>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </section>

                    {{-- Provisi --}}
                    <section class="mb-5">
                        <h5 class="mb-3">Provisi</h5>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover align-middle">
                                <thead class="table-light">
                                    <tr>
                                        <th>Nilai Dikali %</th>
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
                                            <td><input type="text" name="provisi" value="{{ old('nama', $item->provisi) }}" class="form-control" required></td>
                                            <td><input type="text" value="{{ old('input', $item->input_by) }}" class="form-control" disabled></td>
                                            <td><input type="text" value="{{ old('tgl_upddate', $item->tgl_update) }}" class="form-control datepicker" disabled></td>
                                            <td><button type="submit" class="btn btn-primary btn-sm w-100">Simpan</button></td>
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
                            <table class="table table-bordered align-middle" id="pengeluaranTable">
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
                                </tbody>
                            </table>

                            <div class="d-flex gap-2">
                                <button id="btnAddRow" class="btn btn-success">Add Row</button>
                                <button id="btnSave" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection