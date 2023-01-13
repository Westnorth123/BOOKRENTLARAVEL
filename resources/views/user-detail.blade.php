@extends('layouts.mainlayout')

@section('title', 'Detail User')

@section('content')
    <h1>User Aktif</h1>

    <div class="mt-5 d-flex justify-content-end ">
        @if ($user->status =='inactive')
        <a href="/user-approve/{{$user->slug}}" class="btn btn-info me-3">Approved User</a>
        @endif
    </div>

    <div class="mt-5">
        @if (session('status'))
        <div class="alert alert-success">
        {{session('status')}}
        </div>
        @endif
    </div>


    <div class="my-5 w-25">
        <div class="mb-3">
            <label for="" class="form-label">Username</label>
            <input type="text" class="form-control" readonly value="{{$user->username}}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Telepon</label>
            <input type="text" class="form-control" readonly value="{{$user->phone}}">
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Alamat</label>
            <textarea name="text" id="" rows="7" class="form-control" style="resize: none" readonly>{{ $user->address}}</textarea>
        </div>
        <div class="mb-3">
            <label for="" class="form-label">Status</label>
            <input type="text" class="form-control" readonly value="{{$user->status}}">
        </div>
    </div>

    <div class="mt-5">
        <h2>Log Sewa</h2>
        <x-rent-log-table :rentlog='$rent_logs' />
    </div>
@endsection