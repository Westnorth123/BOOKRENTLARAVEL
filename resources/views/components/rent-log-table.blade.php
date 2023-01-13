<div>
    <!-- You must be the change you wish to see in the world. - Mahatma Gandhi -->
    <table class="table">
        <thead>
            <tr>
                <th>No.</th>
                <th>User</th>
                <th>Buku</th>
                <th>Tanggal Sewa</th>
                <th>Tanggal Kembali</th>
                <th>Tanggal Dikembalikan</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($rentlog as $item)
                <tr class="{{ $item->actual_return_date == null ? '' : ($item->return_date < $item->actual_return_date ? 'text-bg-danger' : 'text-bg-success') }}">
                    <td>{{ $loop->iteration}}</td>
                    <td>{{ $item->user->username }}</td>
                    <td>{{ $item->book->title}}</td>
                    <td>{{ $item->rent_date }}</td>
                    <td>{{ $item->return_date }}</td>
                    <td>{{ $item->actual_return_date }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>