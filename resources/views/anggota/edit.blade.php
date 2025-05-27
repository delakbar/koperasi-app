@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Edit Anggota</div>
            <div class="card-body">
                <h2>Edit Data Anggota</h2>
                <form action="{{ route('anggota.update', $anggota->id) }}" method="POST">
                    @csrf
                    @method('PUT')

                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama Lengkap</label>
                        <input type="text" class="form-control" id="nama" name="nama" 
                               value="{{ old('nama', $anggota->nama) }}" required>
                    </div>

                    <div class="mb-3">
                        <label for="username" class="form-label">Username / NIK</label>
                        <input type="text" class="form-control" id="username" name="username" 
                               value="{{ old('username', $anggota->username) }}" readonly>
                    </div>

                    <div class="mb-3">
                        <label for="jabatan" class="form-label">Jabatan</label>
                        <input type="text" class="form-control" id="jabatan" name="jabatan" 
                               value="{{ old('jabatan', $anggota->jabatan) }}" required>
                    </div>

                    <div class="mb-3">
                        <label for="no_hp" class="form-label">No. Telepon</label>
                        <input type="text" class="form-control" id="no_hp" name="no_hp" 
                               value="{{ old('no_hp', $anggota->no_hp) }}" required>
                    </div>

                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="">-- Pilih Role --</option>
                            <option value="anggota" {{ old('role', $anggota->role) == 'anggota' ? 'selected' : '' }}>Anggota</option>
                            <option value="admin" {{ old('role', $anggota->role) == 'admin' ? 'selected' : '' }}>Admin</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">Update</button>
                    <a href="{{ route('anggota.index') }}" class="btn btn-secondary">Batal</a>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
