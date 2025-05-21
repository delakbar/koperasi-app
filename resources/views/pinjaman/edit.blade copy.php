@extends('layouts.app')

@section('title', 'Edit Pinjaman')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Edit Pinjaman</div>
            <div class="card-body">
                <form method="POST" action="{{ route('pinjaman.update', $pinjaman->id) }}">
                    @csrf
                    @method('PUT')
                    <div class="mb-3">
                        <label for="anggota_id" class="form-label">Anggota</label>
                        <select class="form-select @error('anggota_id') is-invalid @enderror" id="anggota_id" name="anggota_id" required>
                            <option value="">Pilih Anggota</option>
                            @foreach ($anggotas as $anggota)
                                <option value="{{ $anggota->id }}" {{ $anggota->id == $pinjaman->anggota_id ? 'selected' : '' }}>{{ $anggota->nama }}</option>
                            @endforeach
                        </select>
                        @error('anggota_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="nominal_pinjaman" class="form-label">Nominal Pinjaman</label>
                        <input type="number" step="0.01" class="form-control @error('nominal_pinjaman') is-invalid @enderror" id="nominal_pinjaman" name="nominal_pinjaman" value="{{ old('nominal_pinjaman', $pinjaman->nominal_pinjaman) }}" required>
                        @error('nominal_pinjaman')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="jenis_pinjaman" class="form-label">Jenis Pinjaman</label>
                        <input type="text" class="form-control @error('jenis_pinjaman') is-invalid @enderror" id="jenis_pinjaman" name="jenis_pinjaman" value="{{ old('jenis_pinjaman', $pinjaman->jenis_pinjaman) }}" required>
                        @error('jenis_pinjaman')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="tgl_pinjam" class="form-label">Tanggal Pinjam</label>
                        <input type="date" class="form-control @error('tgl_pinjam') is-invalid @enderror" id="tgl_pinjam" name="tgl_pinjam" value="{{ old('tgl_pinjam', $pinjaman->tgl_pinjam) }}" required>
                        @error('tgl_pinjam')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="jml_angsuran" class="form-label">Jumlah Angsuran</label>
                        <input type="number" class="form-control @error('jml_angsuran') is-invalid @enderror" id="jml_angsuran" name="jml_angsuran" value="{{ old('jml_angsuran', $pinjaman->jml_angsuran) }}" required>
                        @error('jml_angsuran')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
