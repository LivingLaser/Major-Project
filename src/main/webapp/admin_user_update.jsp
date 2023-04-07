<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin User's details</title>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
 <h3 class="text-center"><b>UPDATE USER'S DATA</b></h3><br>
   <div class="container">

    <form class="row g-3">
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName"  placeholder="Enter your full name..." name="">
          </div>
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your email" name="" >
        </div>
        <div class="col-md-6">
          <label for="inputPhone" class="form-label">Phone No</label>
          <input type="number" class="form-control" id="inputPhone" placeholder="Enter your 10 digits Phone No" name="" >
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Address</label>
          <input type="text" class="form-control" id="inputAddress" placeholder="Your Address..." name="" >
        </div>
        <div class="col-md-6">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity" placeholder="Enter your City here..." name="" >
        </div>
        <div class="col-md-6">
          <label for="inputpincode" class="form-label">Pin code</label>
          <input type="text" class="form-control" id="inputpincode" placeholder="Area PIN code" name="" >
        </div>
        <hr>
        <div class="col-md-12">
          <label for="inputpassword" class="form-label">Password</label>
          <input type="password" class="form-control" disabled placeholder="password" aria-label="password" name="" >
        </div>
        <br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary" type="submit" name="" >UPDATE</button>
          </div>
      </form>

   </div>
</body>
</html>