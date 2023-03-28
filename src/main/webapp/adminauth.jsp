<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <style>
        body {
          background-image: url('https://i.pinimg.com/736x/d2/51/dc/d251dcc27cdd25b905d3c4845b2a7f01.jpg');
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: cover;
        }
    </style>
</head>
<body>
    <p class="h2 text-center text-light bg-dark">ADMINISTRATION PANEL</p><br><br>
    <div class="container d-grid gap-2 col-6 mx-auto"> <br>
        <h1 class="text-center text-light">LOGIN</h1>
        <div class="mb-3 row">
            <label for="staticEmail" class="col-sm-2 col-form-label text-white">ADMIN ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputid" placeholder="Enter your Admin ID" name="" >
            </div>
          </div>
          <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label text-white">PASSWORD:</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="inputPassword" placeholder="Enter your password" name="">
            </div>
          </div><br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary" type="submit" name="" >Login</button>
            <br><br>
          </div>
</body>
</html>