<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<title>login</title>
<jsp:include page="inc/base.jsp"></jsp:include>
<style>
    body {
      background-image: url('https://www.designcap.com/media/pages/images/home/clipart.svg?v=1602654254');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
</style>
<body>
<div class="container d-grid gap-2 col-6 mx-auto"><br>
<h1 class="text-center">Login</h1>
<div class="mb-3 row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
    <div class="col-sm-10">
        <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your registered email" name="" >
    </div>
  </div>
  <div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword" placeholder="Enter your password" name="">
    </div>
  </div>
  <div class="d-grid gap-2 col-6 mx-auto"><br>
    <button class="btn btn-primary" type="submit" name="" >Login</button>
    <br><br>
    <span class="text-center">Don't have an account with us? <br>Please click here to <a href="">Signup</a> 
    </span>
  </div>
</div>

</body><br>
<jsp:include page="inc/footer.jsp"></jsp:include>