<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <style>
        body {
          background-image: url('https://c4.wallpaperflare.com/wallpaper/904/1022/350/hud-1-wallpaper-preview.jpg');
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: cover;
        }

        .card {
          background-color: rgba(255, 255, 255, 0.7);
        }
    </style>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br><br><br><br><br><br><br><br><br>
<div class="container">
    <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Users message</h5>
                <p class="card-text">All the messages sent by the users are stored here.</p>
                <form action="contact_us_admin" method="post">
                <div class="ab text-center"><button type="submit" class="btn btn-primary">Visit</button></div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card ">
              <div class="card-body">
                <h5 class="card-title">Users Data</h5>
                <p class="card-text">All the data of Users are stored in here</p>
                <div class="ab text-center"><a href="admin_userdb.jsp" class="btn btn-primary">Visit</a></div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Product Details</h5>
                <p class="card-text">All the product data are stored in here</p>
                <div class="ab text-center"><a href="admin_productdb.jsp" class="btn btn-primary">Visit</a></div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Cart details</h5>
                <p class="card-text">Data related to users cart items stored here</p>
                <div class="ab text-center"><a href="admin_cartdb.jsp" class="btn btn-primary">Visit</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
</div>
   

</body>
</html>