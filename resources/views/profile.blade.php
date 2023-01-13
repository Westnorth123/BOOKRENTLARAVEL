@extends('layouts.mainlayout')

@section('title', 'Profile')

@section('page-name', 'profile')

@section('content')
   <div class="mt-5">
        <h2>Log Sewa Anda</h2>
        <x-rent-log-table :rentlog='$rent_logs' />
   </div>
@endsection