@extends('layouts.mainlayout')

@section('title', 'Deleted Book')


@section('content')
    <h1>Data Buku Terhapus</h1>

    <div class="mt-5 d-flex justify-content-end ">
        <a href="/books" class="btn btn-primary">Kembali</a>
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
                    <th>No.</th>
                    <th>Kode</th>
                    <th>Judul</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($deletedBooks as $item)
                    <tr>
                        <td>{{ $loop->iteration}}</td>
                        <td>{{ $item->book_code}}</td>
                        <td>{{ $item->title}}</td>
                        <td>
                            <a href="/book-restore/{{$item->slug}}">Restore</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>


@endsection