<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href ="css/bootstrap.min.css">
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
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<div class="container-fluid">
 <h1 class="text-center">ORDERS LIST</h1>
     <table class="table table-dark">
        <thead>
          <tr>
            <th>Customer ID</th>
            <th>Customer Order</th>
            <th>Date</th>
            <th colspan="2" scope="col">Admin Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1772</td>
            <td>apples</td>
            <td>12/10/2001</td>
            <td><button class="btn btn-info"> <a href="admin_order_view.jsp">View</a></button></td>
            <td><button class="btn btn-danger">Delete</button></td>
          </tr>
        </tbody>
      </table>
      
 

</div>
</body>
</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>