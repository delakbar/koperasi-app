@extends('layouts.app')

@section('title', 'Tambah Angsuran')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Angsuran</div>
            <div class="card-body">
                <form method="POST" action="{{ route('angsuran.store') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="pinjaman_id" class="form-label">Pinjaman</label>
                        <select class="form-select @error('pinjaman_id') is-invalid @enderror" id="pinjaman_id" name="pinjaman_id" required>
                            <option value="">Pilih Pinjaman</option>
                            @foreach ($pinjamans as $pinjaman)
                                <option value="{{ $pinjaman->id }}">{{ $pinjaman->anggota->nama }} - Rp {{ number_format($pinjaman->nominal_pinjaman, 2, ',', '.') }}</option>
                            @endforeach
                        </select>
                        @error('pinjaman_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="angsuran_ke" class="form-label">Angsuran Ke</label>
                        <input type="number" class="form-control @error('angsuran_ke') is-invalid @enderror" id="angsuran_ke" name="angsuran_ke" value="{{ old('angsuran_ke') }}" required>
                        @error('angsuran_ke')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="nominal_angsuran" class="form-label">Nominal Angsuran</label>
                        <input type="number" step="0.01" class="form-control @error('nominal_angsuran') is-invalid @enderror" id="nominal_angsuran" name="nominal_angsuran" value="{{ old('nominal_angsuran') }}" required>
                        @error('nominal_angsuran')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="total_pinjaman" class="form-label">Total Pinjaman</label>
                        <input type="number" class="form-control @error('total_pinjaman') is-invalid @enderror" id="total_pinjaman" name="total_pinjaman" value="{{ old('total_pinjaman') }}" required>
                        @error('total_pinjaman')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="tgl_bayar" class="form-label">Tanggal Bayar</label>
                        <input type="date" class="form-control @error('tgl_bayar') is-invalid @enderror" id="tgl_bayar" name="tgl_bayar" value="{{ old('tgl_bayar') }}" required>
                        @error('tgl_bayar')
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
