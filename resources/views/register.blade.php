<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rental Buku | Daftar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<style>
    .main{
        height: 100vh
    }

    .register-box {
        width: 500px;
        border: solid 1px;
        padding: 20px;
    }
    
    form div {
        margin-bottom: 15px;
    }

</style>

<body>
    <div class="main d-flex flex-column justify-content-center align-items-center">
    <h1>Form Registrasi</h1>

    @if ($errors->any())
     <div class="alert alert-danger" style="width: 500px">
         <ul>
             @foreach ($errors->all() as $error)
                 <li>{{ $error }}</li>
             @endforeach
         </ul>
     </div>
    @endif

    @if (session('status'))
    <div class="alert alert-success" style="width:500px">
        {{session('message')}}
    </div>
    @endif

        <div class="register-box">
        <form action="" method="post">
            @csrf
            <div>
                <Label for="username" class="form-label">Username</label>
                <input type="username" name="username" id="username" class="form-control" required>
            </div>
            <div>
                <Label for="password" class="form-label">Password</label>
                <input type="password" name="password" id="password" class="form-control" required> 
            </div>
            <div>
                <Label for="phone" class="form-label">Nomor HP</label>
                <input type="phone" name="phone" id="phone" class="form-control"> 
            </div>
            <div>
                <Label for="address" class="form-label">Alamat</label>
                <textarea name="address" name="address" id="address" class="form-control" rows="5" required></textarea> 
            </div>
             <button type="submit" class="btn btn-primary form-control">Daftar</button>
            <div>
            <div class="text-center">
                Have account? <a href="login">Login</a>
        </div>
        </form>
        </div>
    </div>
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>