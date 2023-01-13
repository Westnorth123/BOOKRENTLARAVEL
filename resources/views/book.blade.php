@extends('layouts.mainlayout')

@section('title', 'book')

@section('page-name', 'book')

@section('content')
    <h1>Data Buku</h1>

    <div class="my-5 d-flex justify-content-end">
        <a href="/book-deleted" class="btn btn-secondary me-3">Lihat Data Terhapus</a>
        <a href="/book-add" class="btn btn-primary">Tambah Data</a>
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
                    <th>Kategori</th>
                    <th>status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($books as $item)
                    <tr>
                        <td>{{ $loop->iteration}}</td>
                        <td>{{ $item->book_code}}</td>
                        <td>{{ $item->title}}</td>
                        <td>
                            @foreach ($item->categories as $category)
                                {{ $category->name }} <br>
                            @endforeach
                        </td>
                        <td>{{ $item->status}}</td>
                        <td>
                            <a href="/book-edit/{{$item->slug}}">edit</a>
                            <a href="/book-delete/{{$item->slug}}">hapus</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

@endsection