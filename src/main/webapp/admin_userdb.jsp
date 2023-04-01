<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
     .table{
        border:3px;
        
    }
    .table tr th{
        color:solid black;
        text-align:center;
        font-size:15px;
        padding:4px 3px;
        text-decoration:none;


    }
    .table tr td{
        color:solid black;
        text-align:center;
        font-size:13px;
    }
    .heading{
        text-align:center;
        color:red;
    }
    .btn a{
        text-decoration:none;
        color:white;
    }
   
</style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<p class="h2 text-center text-light bg-dark"><strong>ADMINISTRATOR PANEL</strong></p>
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







<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
</body>
</html>