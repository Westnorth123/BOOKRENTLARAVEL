@extends('layouts.mainlayout')

@section('title', 'Dashboard')

@section('content')

<h1>Selamat Datang, {{Auth::user()->username}}</h1>

<div class="row mt-5">
    <div class="col-lg-4">
        <div class="card-data book">
            <div class="row">
                <div class="col-6"><i class="bi bi-journal"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Book</div>
                    <div class="card-count">{{$book_count}}</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="card-data category">
            <div class="row">
                <div class="col-6"><i class="bi bi-list-ol"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Kategori</div>
                    <div class="card-count">{{$category_count}}</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="card-data user">
            <div class="row">
                <div class="col-6"><i class="bi bi-person"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Users</div>
                    <div class="card-count">{{$user_count}}</div>
                </div>
            </div>
        </div>
    </div>

</div>



@endsection