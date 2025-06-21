@extends('layouts.app')

@section('title', 'Upload Simpanan')

@section('content')
<div class="container">
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
                                $isFailed = str_contains($logS, 'skipped');
                            @endphp
                         <li style="color: {{ $isFailed ? 'red' : 'green' }}">
                            {!! $isFailed ? '❌' : '✅' !!} {{ $logS }}
                        </li>
                        @endforeach
                    </ul>
                </td>
                <td style="color: {{ $item['angsuran_update'] == 'success' ? 'green' : 'red' }}">
                    {{ ucfirst($item['angsuran_update']) }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection`
