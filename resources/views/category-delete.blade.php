@extends('layouts.mainlayout')

@section('title', 'Delete Category')

@section('content')
   <h2>Apakah anda ingin menghapus kategory {{$category->name}} ?</h2>
   <div class="mt-5">
        <a href="/category-destroy/{{$category->slug}}" class="btn btn-danger me-3">Hapus</a>
        <a href="/categories" class="btn btn-primary">Batal</a>
   </div>
@endsection