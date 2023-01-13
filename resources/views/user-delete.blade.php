@extends('layouts.mainlayout')

@section('title', 'Delete User')

@section('content')
   <h2>Apakah anda ingin Blokir User {{$user->username}} ?</h2>
   <div class="mt-5">
        <a href="/user-destroy/{{$user->slug}}" class="btn btn-danger me-3">Hapus</a>
        <a href="/users" class="btn btn-primary">Batal</a>
   </div>
@endsection