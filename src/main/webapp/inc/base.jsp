<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<style>
.card:hover {
  box-shadow: 0 0 10px rgba(0,0,0,.3);
  border-radius: 10px;
  transform: scale(1.05);
  border: 2px solid #ccc;
  background-color: #f8f9fa;
  box-shadow: 0 0 10px rgba(0,0,0,.2);
}
.card-title {

}
.card-footer {
  background-color: #f8f9fa;
}
@media (max-width: 576px) {
  .btn {
    padding: 0.5rem 1rem;
    font-size: 0.875rem;
  }
}

   #discount-text {
      animation: blink 1s infinite;
    }
    
    @keyframes blink {
      0% {
        opacity: 1;
      }
      
      50% {
        opacity: 0.35;
      }
      
      100% {
        opacity: 1;
      }
    }
</style>


<!-- navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">
    <img src="img/icon.png" width="35" height="33" alt="Logo">&nbsp;&nbsp;Grocery Store
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
          <form action="shop1" method="post">
          <button type="submit" class="btn btn-dark pl-4 pr-4 mx-2" style="padding-left: 22px; padding-right: 22px;"><i class="fa fa-shopping-bag " aria-hidden="true"></i></button>
          </form>
        </li>
        <%
        if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
        	String uid = (String)session.getAttribute("uid");
        	int count = 0;
        	
        	try {
        		Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
				
				try {
					String sql = "select cid from cart where uid=?";
					PreparedStatement pstm = con.prepareStatement(sql);
					pstm.setString(1, uid);
					ResultSet rs = pstm.executeQuery();
					
					while(rs.next()) {
						count++;
					}
				}
				finally {
					con.close();
				}
        	}
        	catch(Exception e) {
        		System.out.println(e);
        	}
        %>
          <li class="nav-item">
          <form action="profile" method="post">
          <input type="hidden" name="uid" value="<% out.print(uid); %>">
          <button type="submit" class="btn btn-primary mx-2" style="padding-left: 23px; padding-right: 23px;"><i class="fa fa-user" aria-hidden="true"></i></button>
          </form>
          </li>
         <!-- cart button only if user is logged in-->
        <li class="nav-item">
          <form action="view_cart" method="post">
          <input type="hidden" name="uid" value="<% out.print(uid); %>">
          <button type="submit" class="btn btn-warning mx-2" style="padding-left: 22px; padding-right: 22px;"><i class="fa fa-shopping-cart" aria-hidden="true"></i> (<% out.print(count); %>)</button>
          </form>
        </li>
        <% } %>
      </ul>
      <ul class="d-flex navbar-nav">
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mx-2" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <b>Login/Logout</b>
          </a>
          <ul class="dropdown-menu nav-item" aria-labelledby="navbarDropdown">
          <% if(session.getAttribute("loggedIn") == null) { %>
            <li><a class="dropdown-item text-primary" href="signup.jsp">Signup</a></li>
            <li><a class="dropdown-item text-primary" href="login.jsp">Login</a></li>
          <%
          }
          else {
          %>
            <li>
            <form action="logout" method="post">
            <button class="dropdown-item text-danger" type="submit" >Logout</button>
            </form>
            </li>
          <% } %>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="adminauth.jsp"><b>ADMIN</b></a></li>
          </ul>
        </li>
        </ul>
      <form action="search" method="post" class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" required name="search">
        <button type="submit" class="btn btn-outline-dark" ><i class="fa fa-search" aria-hidden="true"></i></button>
      </form>
    </div>
  </div>
</nav>


<% if(session.getAttribute("message") != null) { %>
  <div class="alert alert-<%= session.getAttribute("color") %> alert-dismissible fade show" role="alert">
    <%= session.getAttribute("message") %>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
  </div>
  
  <% session.removeAttribute("message"); %>
<% } %>