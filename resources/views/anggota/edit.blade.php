@extends('layouts.app')
<<<<<<< HEAD
@section('title', 'Edit')
=======
@title('Edit Anggota')
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
@section('content')
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">Edit Anggota</div>
            <div class="card-body">
<<<<<<< HEAD
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
=======
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
                <h2>Edit Data Anggota</h2>
                <form action="{{ route('anggota.update', $anggota->id) }}" method="POST">
                    @csrf
                    @method('PUT')
<<<<<<< HEAD
=======

>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
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
<<<<<<< HEAD
                               value="{{ old('no_hp', $anggota->no_hp) }}">
=======
                               value="{{ old('no_hp', $anggota->no_hp) }}" required>
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
                    </div>

                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="">-- Pilih Role --</option>
<<<<<<< HEAD
                            <option value="Anggota" {{ old('role', $anggota->role) == 'Anggota' ? 'selected' : '' }}>Anggota</option>
                            <option value="Admin" {{ old('role', $anggota->role) == 'Admin' ? 'selected' : '' }}>Admin</option>
                            <option value="Ketua" {{ old('role', $anggota->role) == 'Ketua' ? 'selected' : '' }}>Ketua</option>
=======
                            <option value="anggota" {{ old('role', $anggota->role) == 'anggota' ? 'selected' : '' }}>Anggota</option>
                            <option value="admin" {{ old('role', $anggota->role) == 'admin' ? 'selected' : '' }}>Admin</option>
>>>>>>> 7ea93c042cd04d7f5d5288c7fb217c3c5e2bee9f
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
