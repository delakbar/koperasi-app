@extends('layouts.app')

@section('title', 'Tambah Simpanan')
@if (session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif
@if (session('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('error') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Simpanan</div>
            <div class="card-body">
                <form method="POST" action="{{ route('simpanan.store') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="anggota_id" class="form-label">Anggota</label>
                        <select class="form-select @error('anggota_id') is-invalid @enderror" id="anggota_id" name="anggota_id" required>
                            <option value="">Pilih Anggota</option>
                            @foreach ($anggotas as $anggota)
                                <option value="{{ $anggota->id }}">{{ $anggota->nama }}</option>
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
                        <select class="form-select @error('jenis_simpanan') is-invalid @enderror" id="jenis_simpanan" name="jenis_simpanan" required>
                                <option value="">-- Jenis Simpanan --</option>
                                @foreach ($jenis_simpanan as $item)
                                    <option value="{{ $item->jenis }}">{{ $item->jenis }}</option>  
                                @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="nominal_simpanan" class="form-label">Nominal Simpanan</label>
                        <div class="input-group">
                            <span class="input-group-text">Rp</span>
                            <input type="text" class="form-control @error('nominal_simpanan') is-invalid @enderror" id="nominal_simpanan_display" value="{{ old('nominal_simpanan') ? number_format(old('nominal_simpanan'), 0, ',', '.') : '' }}" required autocomplete="off">
                            <input type="hidden" id="nominal_simpanan" name="nominal_simpanan" value="{{ old('nominal_simpanan') }}">
                        </div>
                        @error('nominal_pinjaman')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="input_by" class="form-label">Tanggal Input</label>
                        <input type="date" class="form-control @error('tgl_update') is-invalid @enderror" id="tgl_update" name="tgl_update" value="{{ old('input_by') }}" required>
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
@push('scripts')
    <script>
        function formatRupiah(angka, prefix){
            var number_string = angka.replace(/[^,\d]/g, '').toString(),
                split   	 = number_string.split(','),
                sisa     	 = split[0].length % 3,
                rupiah     	 = split[0].substr(0, sisa),
                ribuan     	 = split[0].substr(sisa).match(/\d{3}/gi);
            if(ribuan){
                var separator = sisa ? '.' : '';
                rupiah += separator + ribuan.join('.');
            }
            rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
            return prefix == undefined ? rupiah : (rupiah ? rupiah : '');
        }
        document.getElementById('nominal_simpanan_display').addEventListener('input', function(e){
            var value = this.value.replace(/\./g, '').replace(/[^0-9]/g, '');
            this.value = formatRupiah(value);
            document.getElementById('nominal_simpanan').value = value;
        });
    </script>
@endpush
