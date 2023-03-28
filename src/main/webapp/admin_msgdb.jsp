<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
    
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
        color:black;
    }
    .btn a{
        text-decoration:none;
        color:white;
    }
   

       

   </style>


</head>
<body>
<div class="container-fluid">
    <div class="heading"><h1>USER'S MESSAGES </h1></div>

        
    <table class="table table-dark">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NAME</th>
                    <th scope="col">EMAIL ID</th>
                    <th scope="col">MESSAGES</th>
                    <th colspan="3" scope="col">ADMIN ACTIONS</th>
                </tr>
            </thead>
            <tbody>
<!-- loop cholbe -->
                <tr>
                    <td><b>data</b></td>
                    <td>data</td>
                    <td>data</td>
                    <td>data</td>
                    <td><button class="btn btn-info"><a href="">View</button></td>
                    <td><button class="btn btn-danger"><a href="">Delete</button></a></td>
                    <td><button onclick="window.print()" class="btn btn-secondary">Print</button></td>

                </tr>
                     
            </tbody>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                       integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                           crossorigin="anonymous"></script>
        </table>
   
</div>
</body>
</html>