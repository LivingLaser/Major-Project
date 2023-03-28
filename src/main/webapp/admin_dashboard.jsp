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
          background-image: url('https://png.pngtree.com/background/20211217/original/pngtree-technology-round-dashboard-picture-image_1598385.jpg');
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: cover;
        }

        .card {
          background-color: rgba(255, 255, 255, 0.8);
        }
    </style>
</head>
<body>
<p class="h2 text-center text-light bg-dark"><strong>ADMINISTRATOR PANEL</strong></p><br><br><br><br><br><br><br><br><br>
<div class="container">
    <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Users message</h5>
                <p class="card-text">All the messages sent by the users are stored here.</p>
                <div class="ab text-center"><a href="admin_msgdb.jsp" class="btn btn-primary">Visit</a></div>
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