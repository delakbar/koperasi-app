@extends('layouts.app')

@section('title', 'Topup Pinjaman')

@section('content')
<div class="container">
    <h4>Topup Pinjaman</h4>

    {{-- Tampilkan pesan sukses atau error --}}
    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card mt-3">
        <div class="card-body">
            <form action="{{ route('pinjaman.topup.proses', $pinjaman->id) }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label>Nama Anggota</label>
                    <input type="text" class="form-control" value="{{ $pinjaman->anggota->nama }}" readonly>
                </div>

                <div class="mb-3">
                    <label>Jenis Pinjaman</label>
                    <input type="text" class="form-control" value="{{ $pinjaman->jenis_pinjaman }}" readonly>
                </div>

                <div class="mb-3">
                    <label>Sisa Belum dibayarkan</label>
                    <input type="text" class="form-control" value="Rp {{ number_format($sisaNominalBelumLunas, 0, ',', '.') }}" readonly>
                </div>

                <div class="mb-3 row">
                   <div class="col-md-6">
                    <label>Nominal Pinjaman Baru</label>
                    <div class="input-group shadow-sm">
                        <span class="input-group-text bg-light text-dark border-end-0">Rp</span>
                        <input 
                            type="text" 
                            class="form-control border-start-0" 
                            id="nominal_display"
                            autocomplete="off"
                            required
                            placeholder="Masukkan nominal pinjaman"
                            value="{{ old('nominal') ? number_format((int) old('nominal'), 0, ',', '.') : '' }}"
                        >
                    </div>
                    <input type="hidden" name="nominal" id="nominal" value="{{ old('nominal') }}">
                </div>

                    <div class="col-md-6">
                        <label>Nominal Diterima</label>
                        <div class="input-group shadow-sm">
                            <span class="input-group-text bg-light text-dark border-end-0">Rp</span>
                            <input 
                                type="text" 
                                class="form-control bg-light text-muted border-start-0" 
                                id="nominalTerima" 
                                readonly 
                                placeholder="Nominal diterima"
                            >
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label>Jumlah Angsuran</label>
                    <input type="number" name="jumlah_angsuran" class="form-control" value="{{ old('jumlah_angsuran') }}" required>
                </div>

                <button class="btn btn-success">Proses Topup</button>
                <a href="{{ route('pinjaman.index') }}" class="btn btn-secondary">Batal</a>
            </form>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function () {
    const displayInput = document.getElementById('nominal_display');
    const hiddenInput = document.getElementById('nominal');
    const nominalTerima = document.getElementById('nominalTerima');

    const sisaBelumBayar = parseInt(@json($sisaNominalBelumLunas));
    const provisiObj = @json($provisi);
    const provisi = parseFloat(provisiObj.provisi);

    function formatRupiah(angka) {
        let number_string = angka.replace(/[^,\d]/g, '').toString(),
            split = number_string.split(','),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        if (ribuan) {
            let separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        return split[1] !== undefined ? rupiah + ',' + split[1] : rupiah;
    }

    displayInput.addEventListener('input', function (e) {
        let raw = e.target.value.replace(/[^0-9]/g, '');
        let nominalBaru = parseInt(raw);

        // Update tampilan dan hidden value
        e.target.value = formatRupiah(raw);
        hiddenInput.value = nominalBaru;

        let potonganProvisi = Math.floor(nominalBaru * provisi);
        let diterima = nominalBaru - sisaBelumBayar - potonganProvisi;

        nominalTerima.value = nominalBaru > 0 && diterima >= 0
            ? Math.floor(diterima).toLocaleString('id-ID')
            : '';
    });
});
</script>
@endpush

