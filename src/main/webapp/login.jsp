<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>login</title>
<style>
body {
      background-image: url('elements/signup.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
}
</style>
</head>

<body>

<jsp:include page="inc/base.jsp"></jsp:include>

<form action="login" method="post">
<div class="container d-grid gap-2 col-6 mx-auto"><br>
<h1 class="text-center">Login</h1>
<div class="mb-3 row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
    <div class="col-sm-10">
        <input type="email" class="form-control" id="inputEmail4"  required placeholder="Enter your registered email" name="email" >
    </div>
  </div>
  <div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword"  required placeholder="Enter your password" name="password">
    </div>
  </div>
  <div class="d-grid gap-2 col-6 mx-auto"><br>
    <button class="btn btn-primary" type="submit">Login</button>
    <br><br>
    <span class="text-center">Don't have an account with us? <br>Please click here to <a href="signup.jsp">Signup</a>
    </span>
  </div>
</div>
</form>

<script src="js/eye_button.js"></script>

</body><br>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>