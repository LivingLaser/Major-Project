<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><b>ADMINISTRATION PANEL</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Fresh Basket</i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="btn btn-outline-light mx-2" href="admin_dashboard.jsp" role="button">Dashboard</a>
        </li>
        <li class="nav-item">
           <form action="admin_logout" method="post">
            <button class="btn btn-outline-light mx-2" type="submit" >Logout</button>
           </form>
        </li>
      </ul>
    </div>
  </div>
</nav>


<% if (session.getAttribute("message") != null) { %>
  <div class="alert alert-<%= session.getAttribute("color") %> alert-dismissible fade show" role="alert">
    <%= session.getAttribute("message") %>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  
  <% session.removeAttribute("message"); %>
<% } %>