@extends('layouts.app')
@section('title', 'Create Anggota')
@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Tambah Anggota</div>
                <div class="card-body">                 
                    <form action="{{ route('anggota.store') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="nama" class="form-label">Nama Lengkap</label>
                            <input type="text" class="form-control" id="nama" name="nama" required>
                        </div>
                        <div class="mb-3">
                            <label for="username" class="form-label">Username / NIK</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="jabatan" class="form-label">Jabatan</label>
                            <input type="text" class="form-control" id="jabatan" name="jabatan" required>
                        </div>
                        <div class="mb-3">
                            <label for="no_hp" class="form-label">No. Telepon</label>
                            <input type="text" class="form-control" id="no_hp" name="no_hp" required>
                        </div>
                        <div class="mb-3">
                            <label for="role" class="form-label">role</label>
                            <select class="form-control" id="role" name="role" required>
                            <option value="">-- Pilih Role --</option>
                            <option value="Anggota">Anggota</option>
                            <option value="Admin">Admin</option>
                            <option value="Ketua">Admin</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        <a href="{{ route('anggota.index') }}" class="btn btn-secondary">Batal</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection