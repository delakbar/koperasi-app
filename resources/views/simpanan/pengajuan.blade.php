@extends('layouts.app')

@section('title', 'Tambah Simpanan')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Simpanan</div>
            <div class="card-body">
                <form method="POST" action="{{ route('pengajuan.store_simpanan') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="anggota_id" class="form-label">Anggota</label>
                        <input type="text" class="form-control" id="anggota_id" value="{{ $user->nama }}" disabled>
                    </div>

                    <div class="mb-3">
                        <label for="jenis_simpanan" class="form-label">Jenis Simpanan</label>
                        <input 
                            type="text" 
                            class="form-control" 
                            id="jenis_simpanan" 
                            name="jenis_simpanan" 
                            value="Sukarela" 
                            readonly
                        >
                    </div>

                    <div class="mb-3">
                        <label for="nominal_simpanan_display" class="form-label fw-semibold">Nominal Simpanan</label>
                        <div class="input-group shadow-sm">
                            <span class="input-group-text bg-light text-dark border-end-0">Rp</span>
                            <input 
                                type="text" 
                                class="form-control border-start-0 @error('nominal_simpanan') is-invalid @enderror" 
                                id="nominal_simpanan_display" 
                                value="{{ old('nominal_simpanan') ? number_format(old('nominal_simpanan'), 0, ',', '.') : '' }}" 
                                required 
                                autocomplete="off"
                                placeholder="Masukkan nominal"
                            >
                        </div>
                        <input type="hidden" id="nominal_simpanan" name="nominal_simpanan" value="{{ old('nominal_simpanan') }}">
                        @error('nominal_simpanan')
                            <div class="text-danger mt-1 small">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label for="tgl_simpan" class="form-label">Tanggal Simpan</label>
                        <input type="date" class="form-control @error('tgl_simpan') is-invalid @enderror" id="tgl_simpan" name="tgl_simpan" value="{{ old('tgl_simpan') }}" required>
                        @error('tgl_simpan')
                            <span class="invalid-feedback" role="alert">{{ $message }}</span>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-success">Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
  function formatRupiah(angka, prefix){
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
            split         = number_string.split(','),
            sisa          = split[0].length % 3,
            rupiah        = split[0].substr(0, sisa),
            ribuan        = split[0].substr(sisa).match(/\d{3}/gi);

        if (ribuan) {
            var separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        return prefix === undefined ? rupiah : (rupiah ? prefix + rupiah : '');
    }

    document.getElementById('nominal_simpanan_display').addEventListener('input', function(e) {
        var value = this.value.replace(/\./g, '').replace(/[^0-9]/g, '');
        this.value = formatRupiah(value);
        document.getElementById('nominal_simpanan').value = value;
    });
</script>
@endpush
