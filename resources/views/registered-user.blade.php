@extends('layouts.mainlayout')

@section('title', 'User')

@section('content')
    <h1>Register Baru</h1>

    <div class="mt-5 d-flex justify-content-end ">
        <a href="/users" class="btn btn-primary me-3">Approved User</a>
    </div>

    <div class="my-5">

        <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>username</th>
                        <th>Telepon</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                   @foreach ($registeredUsers as $item)
                       <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->username }}</td>
                        <td>
                            @if($item->phone)
                               {{ $item->phone}}
                            @else

                                -

                            @endif
                            </td>
                            <td>
                                <a href="/user-detail/{{$item->slug}}">Detail</a>
                            </td>
                        </tr>
                   @endforeach
                </tbody>
        </table>

    </div>
@endsection