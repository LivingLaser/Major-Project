<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_login</title>
    <link rel="stylesheet" href="css/adminauth.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <p class="h2 text-center text-light bg-dark">ADMINISTRATOR AUTHENTICATION</p>
    
	<% if (session.getAttribute("message") != null) { %>
	  <div class="alert alert-<%= session.getAttribute("color") %> alert-dismissible fade show" role="alert">
	    <%= session.getAttribute("message") %>
	      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	  </div>
	  
	  <% session.removeAttribute("message"); %>
	<% } %>
    
    <br><br>
    <div class="container d-grid gap-2 col-6 mx-auto"> <br>
        <h1 class="text-center text-light">LOGIN</h1>
        <form action="admin_login" method="post">
        <div class="mb-3 row">
            <label for="staticEmail" class="col-sm-2 col-form-label text-white">ADMIN ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputid" placeholder="Enter your Admin User Name" required name="username" >
            </div>
          </div>
          <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label text-white">PASSWORD:</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="inputPassword" placeholder="Enter your password" required name="password">
            </div>
          </div><br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary" type="submit" name="" >Login</button>
            <br><br>
          </div>
          </form>
     </div>
     
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
          
</body>
</html>