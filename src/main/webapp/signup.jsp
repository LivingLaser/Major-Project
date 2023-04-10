<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>signup</title>
<link rel="stylesheet" href="css/signup.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<jsp:include page="inc/base.jsp"></jsp:include>

   <h1 class="text-center">SIGNUP</h1><br>
   <div class="container">

    <form action="signup" method="post" class="row g-3">
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" required name="name" placeholder="Enter your full name...">
          </div>
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4" required placeholder="Enter your email" name="email" >
        </div>
        <div class="col-md-6">
          <label for="inputPhone" class="form-label">Phone No</label>
          <input type="number" class="form-control" id="inputPhone" required placeholder="Enter your 10 digits Phone No" name="phone" >
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Address</label>
          <input type="text" class="form-control" id="inputAddress" required placeholder="Your Address..." name="address" >
        </div>
        <div class="col-md-6">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity" required placeholder="Enter your City here..." name="city" >
        </div>
        <div class="col-md-6">
          <label for="inputpincode" class="form-label">Pin code</label>
          <input type="text" class="form-control" id="inputpincode" required placeholder="Area PIN code" name="pincode" >
        </div>
        <hr>Create a new password
        <div class="row g-3">
            <div class="col">
              <input type="password" class="form-control" id="inputPassword" placeholder="password" required aria-label="password" name="password" >
              <span class="eye"><i class="fa fa-eye fa-2x" id="showHide" aria-hidden="true"></i></span>
            </div>
            <div class="col">
              <input type="password" class="form-control" placeholder="confirm password" required aria-label="password" name="confirm_password" >
            </div>
          </div>
          <div class="d-grid gap-2 col-6 mx-auto"><br>
            <button class="btn btn-primary" type="submit">Signup</button>
          </div>
      </form>

   </div>
   <script src="js/eye_button.js"></script>
</body>
<br>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>