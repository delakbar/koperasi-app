@extends('layouts.app')
@section('title', 'Edit')
@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Edit Anggota</div>
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
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
                               value="{{ old('no_hp', $anggota->no_hp) }}">
                    </div>

                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="">-- Pilih Role --</option>
                            <option value="Anggota" {{ old('role', $anggota->role) == 'Anggota' ? 'selected' : '' }}>Anggota</option>
                            <option value="Admin" {{ old('role', $anggota->role) == 'Admin' ? 'selected' : '' }}>Admin</option>
                            <option value="Ketua" {{ old('role', $anggota->role) == 'Ketua' ? 'selected' : '' }}>Ketua</option>
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
