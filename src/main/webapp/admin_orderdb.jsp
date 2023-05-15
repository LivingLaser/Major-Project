<%@ page import="java.util.*" %>
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
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1"><h2>ORDER LIST</h2></span>
    <span class="d-flex"><button onclick="window.print()" class="btn btn-secondary btn-lg">Print Page</button></span>
  </div>
</nav>
     <table class="table table-striped table-dark">
        <thead>
          <tr>
            <th>Customer Name</th>
            <th>Customer Email</th>
            <th colspan="2" scope="col">Date & Time</th>
            <th colspan="2" scope="col">Admin Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
        @SuppressWarnings({"unchecked", "rawtypes"})
        ArrayList<HashMap> orders = (ArrayList<HashMap>)request.getAttribute("order");
        
        for(int i=0;i<orders.size();i++) {
        %>
          <tr>
            <td><% out.print(orders.get(i).get("name")); %></td>
            <td><% out.print(orders.get(i).get("email")); %></td>
            <td><% out.print(orders.get(i).get("date")); %></td>
            <td><% out.print(orders.get(i).get("time")); %></td>
            <td><button class="btn btn-info"> <a href="admin_order_view.jsp">View</a></button></td>
            <td><button class="btn btn-danger">Delete</button></td>
          </tr>
        <% } %>
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