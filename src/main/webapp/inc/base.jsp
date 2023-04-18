<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>



<!-- navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">
    <img src="img/logo icon.png" width="35" height="33" alt="Logo">&nbsp;&nbsp;Grocery Store
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <li class="nav-item">
          <a class="nav-link" href="about.jsp"><b>About us</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.jsp"><b>Contact us</b></a>
        </li>
        <li class="nav-item">
          <form action="shop" method="post">
          <input type="hidden" value="vegetablesfruits" name="category">
          <button type="submit" class="btn btn-dark mx-2">Shop</button>
          </form>
        </li>
        <%
        if(session.getAttribute("loggedIn") != null && (Boolean)session.getAttribute("loggedIn")) {
        	String uid = (String)session.getAttribute("uid");
        %>
          <li class="nav-item">
          <form action="profile" method="post">
          <input type="hidden" name="uid" value="<% out.print(uid); %>">
          <button type="submit" class="btn btn-primary mx-2">Profile</button>
          </form>
          </li>
         <!-- cart button only if user is logged in-->
        <li class="nav-item">
        
          <button type="submit" class="btn btn-warning mx-2">Cart</button>
        </li>
        <% } %>
      </ul>
      <ul class="d-flex navbar-nav">
              <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mx-2" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <b>Login/Logout</b>
          </a>
          <ul class="dropdown-menu nav-item" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item text-primary" href="signup.jsp">Signup</a></li>
            <li><a class="dropdown-item text-primary" href="login.jsp">Login</a></li>
            <li>
            <form action="logout" method="post">
            <button class="dropdown-item text-danger" type="submit" >Logout</button>
            </form>
            </li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="adminauth.jsp"><b>ADMIN</b></a></li>
          </ul>
        </li>
        </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
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

		
	
		
