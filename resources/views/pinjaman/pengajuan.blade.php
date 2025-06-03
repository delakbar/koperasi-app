@extends('layouts.app')

@section('title', 'Tambah Pinjaman')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Pinjaman</div>
            <div class="card-body">
                <form method="POST" action="{{ route('pengajuan.store') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="anggota_id" class="form-label">Anggota</label>
                        <input type="text" class="form-control @error('anggota_id') is-invalid @enderror" id="anggota_id" value="{{ $user->nama }}" disabled>
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
                        <label for="nominal_pinjaman_display" class="form-label fw-semibold">Nominal Pinjaman</label>
                        <label for="nominal_pinjaman_display" class="form-label fw-semibold">Nominal Pinjaman</label>
    
                        <div class="row g-2 align-items-center">
                            <!-- Input Nominal Pinjaman -->
                            <div class="col-md-6">
                                <div class="input-group shadow-sm">
                                    <span class="input-group-text bg-light text-dark border-end-0">Rp</span>
                                    <input 
                                        type="text" 
                                        class="form-control border-start-0" 
                                        id="nominal_pinjaman_display" 
                                        value="{{ old('nominal_pinjaman') ? number_format(old('nominal_pinjaman'), 0, ',', '.') : '' }}" 
                                        required 
                                        autocomplete="off"
                                        placeholder="Masukkan nominal pinjaman"
                                    >
                                </div>
                            </div>

                            <!-- Input Nominal Diterima -->
                            <div class="col-md-6">
                                <div class="input-group shadow-sm">
                                    <span class="input-group-text bg-light text-dark border-end-0">Rp</span>
                                    <input 
                                        type="text" 
                                        class="form-control bg-light text-muted border-start-0" 
                                        id="nominalTerima" 
                                        readonly 
                                        placeholder="Nominal diterima"
                                    readonly>
                                </div>
                            </div>
    
                            <input 
                                type="hidden" 
                                id="nominal_pinjaman" 
                                name="nominal_pinjaman" 
                                value="{{ old('nominal_pinjaman') }}"
                            >
                        </div>

                        @error('nominal_pinjaman')
                            <div class="text-danger mt-1 small">
                                {{ $message }}
                            </div>
                        @enderror

                        <div class="form-text mt-2">
                            <ul class="mb-0 ps-3 text-muted small">
                                <li>Potongan provisi akan dikurangi dari nominal pinjaman.</li>
                            </ul>
                        </div>
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
                        <label for="jml_angsuran" class="form-label">Tenor</label>
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
            split         = number_string.split(','),
            sisa          = split[0].length % 3,
            rupiah        = split[0].substr(0, sisa),
            ribuan        = split[0].substr(sisa).match(/\d{3}/gi);

        if(ribuan){
            var separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix == undefined ? rupiah : (rupiah ? rupiah : '');
    }

    const provisi = 0.015; // Nilai provisi 1.5%, bisa diganti dari backend

    document.getElementById('nominal_pinjaman_display').addEventListener('input', function(e){
        // Ambil nilai input tanpa format (hanya angka)
        var value = this.value.replace(/\./g, '').replace(/[^0-9]/g, '');

        // Format ulang input dengan format rupiah
        this.value = formatRupiah(value);

        // Set nilai numerik asli ke input hidden nominal_pinjaman
        document.getElementById('nominal_pinjaman').value = value;

        // Hitung nominal potongan provisi
        var potonganProvisi = Math.floor(value * provisi);

        // Hitung nominal diterima setelah dipotong provisi
        var nominalTerima = value - potonganProvisi;

        // Tampilkan nominal diterima dengan format rupiah di input nominalTerima
        document.getElementById('nominalTerima').value = formatRupiah(nominalTerima.toString());
    });
</script>
@endpush

