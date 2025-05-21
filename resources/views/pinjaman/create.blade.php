@extends('layouts.app')

@section('title', 'Tambah Pinjaman')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Pinjaman</div>
            <div class="card-body">
                <form method="POST" action="{{ route('pinjaman.store') }}">
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
                        <label for="jenis_pinjaman" class="form-label">Jenis Pinjaman</label>
                        <select class="form-select @error('jenis_pinjaman') is-invalid @enderror" id="jenis_pinjaman" name="jenis_pinjaman" required>
                                <option value="">-- Jenis Pinjaman --</option>
                                @foreach ($jenis_pinjaman as $item)
                                    <option value="{{ $item->jenis }}">{{ $item->jenis }}</option>
                                @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="nominal_pinjaman" class="form-label">Nominal Pinjaman</label>
                        <div class="input-group">
                            <span class="input-group-text">Rp</span>
                            <input type="text" class="form-control @error('nominal_pinjaman') is-invalid @enderror" id="nominal_pinjaman_display" value="{{ old('nominal_pinjaman') ? number_format(old('nominal_pinjaman'), 0, ',', '.') : '' }}" required autocomplete="off">
                            <input type="hidden" id="nominal_pinjaman" name="nominal_pinjaman" value="{{ old('nominal_pinjaman') }}">
                        </div>
                        @error('nominal_pinjaman')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="tgl_pinjam" class="form-label">Tanggal Pinjam</label>
                        <input type="date" class="form-control @error('tgl_pinjam') is-invalid @enderror" id="tgl_pinjam" name="tgl_pinjam" value="{{ old('tgl_pinjam') }}" required>
                        @error('tgl_pinjam')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="jml_angsuran" class="form-label">Jumlah Angsuran</label>
                        <input type="number" class="form-control @error('jml_angsuran') is-invalid @enderror" id="jml_angsuran" name="jml_angsuran" value="{{ old('jml_angsuran') }}" required>
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
        document.getElementById('nominal_pinjaman_display').addEventListener('input', function(e){
            var value = this.value.replace(/\./g, '').replace(/[^0-9]/g, '');
            this.value = formatRupiah(value);
            document.getElementById('nominal_pinjaman').value = value;
        });
    </script>
@endpush

