@extends('layouts.mainlayout')

@section('title', 'Delete Book')

@section('content')
   <h2>Apakah anda ingin menghapus buku {{$book->title}} ?</h2>
   <div class="mt-5">
        <a href="/book-destroy/{{$book->slug}}" class="btn btn-danger me-3">Hapus</a>
        <a href="/books" class="btn btn-primary">Batal</a>
   </div>
@endsection