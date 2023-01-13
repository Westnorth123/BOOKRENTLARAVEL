@extends('layouts.mainlayout')

@section('title', 'User')

@section('content')
    <h1>User List</h1>

    <div class="mt-5 d-flex justify-content-end ">
        <a href="/user-banned" class="btn btn-danger me-3">Data Terblokir</a>
        <a href="/registered-user" class="btn btn-secondary me-3">Unregister</a>
    </div>

    <div class="mt-5">
        @if (session('status'))
        <div class="alert alert-success">
        {{session('status')}}
        </div>
        @endif
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
                    @foreach ($users as $item)
                    <tr>
                        <td>{{ $loop->iteration}}</td>
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
                               <a href="/user-ban/{{$item->slug}}">Blokir</a>
                            </td>
                    </tr>
                    @endforeach
                    
                </tbody>
        </table>

    </div>
@endsection