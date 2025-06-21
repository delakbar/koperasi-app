@extends('layouts.app')

@section('title', 'Upload Simpanan')

@section('content')
<form action="{{ route('upload.simpanan') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="file" name="file" required>
    <button type="submit">Upload Excel</button>
</form>
@endsection