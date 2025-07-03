@extends('layouts.app')

@section('title', 'Edit Simpanan')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Edit Simpanan</div>
            <div class="card-body">
                <form method="POST" action="{{ route('simpanan.update', $simpanan->id) }}">
                    @csrf
                    @method('PUT')
                    <div class="mb-3">
                        <label for="anggota_id" class="form-label">Anggota</label>
                        <select class="form-select @error('anggota_id') is-invalid @enderror" id="anggota_id" name="anggota_id" required>
                            <option value="">Pilih Anggota</option>
                            @foreach ($anggotas as $anggota)
                                <option value="{{ $anggota->id }}" {{ $anggota->id == $simpanan->anggota_id ? 'selected' : '' }}>{{ $anggota->nama }}</option>
                            @endforeach
                        </select>
                        @error('anggota_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="jenis_simpanan" class="form-label">Jenis Simpanan</label>
                        <input type="text" class="form-control @error('jenis_simpanan') is-invalid @enderror" id="jenis_simpanan" name="jenis_simpanan" value="{{ old('jenis_simpanan', $simpanan->jenis_simpanan) }}" required>
                        @error('jenis_simpanan')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="nominal_simpanan" class="form-label">Nominal Simpanan</label>
                        <input type="number" step="0.01" class="form-control @error('nominal_simpanan') is-invalid @enderror" id="nominal_simpanan" name="nominal_simpanan" value="{{ old('nominal_simpanan', $simpanan->nominal_simpanan) }}" required>
                        @error('nominal_simpanan')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="input_by" class="form-label">Tanggal Input</label>
                        <input type="date" class="form-control @error('input_by') is-invalid @enderror" id="input_by" name="input_by" value="{{ old('input_by', $simpanan->input_by) }}" required>
                        @error('input_by')
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
