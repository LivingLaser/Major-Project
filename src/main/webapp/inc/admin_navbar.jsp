<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><b>ADMINISTRATION PANEL</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Grocery Store</i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <form action="adminlogout" method="post">
            <button class="btn btn-outline-light mx-2" type="submit" >Logout</button>
            </form>
        </li>
        <li class="nav-item">
          <a class="btn btn-outline-light mx-2" href="admin_dashboard.jsp" role="button">Dash board</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<%-- Check hobe session a msg ta ache kina --%>
<% if (session.getAttribute("message") != null) { %>
  <div class="alert alert-<%= session.getAttribute("color") %> alert-dismissible fade show" role="alert">
    <%= session.getAttribute("message") %>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
  </div>
  <%-- session close hochhe --%>
  <% session.removeAttribute("message"); %>
<% } %>
