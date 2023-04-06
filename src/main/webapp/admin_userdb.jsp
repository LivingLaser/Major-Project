<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/admin_userdb.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
    <p class="text-center h2">USER'S DATA</p>

<div class="container-fluid">
    <table class="table table-dark">
        <thead>
          <tr>
            <th scope="col">User ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone No</th>
            <th scope="col">Address</th>
            <th scope="col">City</th>
            <th scope="col">Pincode</th>
            <th scope="col">Password</th>
            <th colspan="3" scope="col">ADMIN ACTIONS</th>
            
          </tr>
        </thead>
        <tbody>
<!-- loop chobe -->
          <tr>
            <th scope="row">data</th>
            <td>data</td>
            <td>data</td>
            <td>data</td>
            <td>data</td>
            <td>data</td>
            <td>data</td>
            <td>data</td>
            <td><a class="linkbtn" href="#"><button type="button" class="btn btn-primary">View</button></a></td>
            <td><a class="linkbtn" href="#"><button type="button" class="btn btn-warning">Edit</button></a></td>
            <td><a class="linkbtn" href="#"><button type="button" class="btn btn-danger">Delete</button></a></td>
          </tr>
        </tbody>
      </table>
</div>






<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>