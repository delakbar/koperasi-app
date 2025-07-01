@extends('layouts.app')

@section('title', 'Upload Simpanan')

@section('content')
<div class="container">
    <a href="{{ route('form.upload.simpanan') }}" class="btn btn-secondary mb-3">← Kembali</a>
    <h4>Log Hasil Import</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Baris Excel</th>
                <th>Nama</th>
                <th>Anggota ID</th>
                <th>Log Simpanan</th>
                <th>Update Angsuran</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($log as $item)
            <tr>
                <td>{{ $item['row'] }}</td>
                <td>{{ $item['nama'] }}</td>
                <td>{{ $item['anggota_id'] }}</td>
                <td>
                    <ul>
                        @foreach ($item['simpanan'] as $logS)
                            @php
                                $isSkipped = str_contains(strtolower($logS), 'skipped');
                                $isSuccess = str_contains(strtolower($logS), 'success');
                                $isNotFound = str_contains(strtolower($logS), 'not found');
                                $color = $isSkipped ? '#6c757d' : ($isSuccess ? 'green' : ($isNotFound ? 'red' : 'black'));
                                $icon = $isSkipped ? '⏸️' : ($isSuccess ? '✅' : ($isNotFound ? '❌' : '•'));
                            @endphp
                            <li style="color: {{ $color }}">
                                {!! $icon !!} {{ $logS }}
                            </li>
                        @endforeach
                    </ul>
                </td>
                @php
                    $isSkipped = str_contains(strtolower($item['angsuran_update']), 'skipped');
                    $isSuccess = str_contains(strtolower($item['angsuran_update']), 'success');
                    $isNotFound = str_contains(strtolower($item['angsuran_update']), 'not found');
                    $color = $isSkipped ? '#6c757d' : ($isSuccess ? 'green' : ($isNotFound ? 'red' : 'black'));
                    $icon = $isSkipped ? '⏸️' : ($isSuccess ? '✅' : ($isNotFound ? '❌' : '•'));
                @endphp
                <td style="color: {{ $color }}">
                    {!! $icon !!} {{ ucfirst($item['angsuran_update']) }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection`
