@if(count($log))
    <div class="table-responsive mt-4">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Row</th>
                    <th>Username</th>
                    <th>Nominal</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($log as $item)
                    <tr>
                        <td>{{ $item['row'] }}</td>
                        <td>{{ $item['username'] }}</td>
                        <td>{{ number_format($item['nominal']) }}</td>
                        <td>{{ $item['status'] }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endif
