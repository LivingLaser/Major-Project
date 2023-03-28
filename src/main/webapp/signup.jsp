<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <titlE>signup</titlE>
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
   <h1 class="text-center">SIGNUP</h1><br>
   <div class="container">

    <form class="row g-3">
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" name="" placeholder="Enter your full name...">
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
        <hr>Create a new password
        <div class="row g-3">
            <div class="col">
              <input type="password" class="form-control" placeholder="password" aria-label="password" name="" >
            </div>
            <div class="col">
              <input type="password" class="form-control" placeholder="confirm password" aria-label="password" name="" >
            </div>
          </div>
          <div class="d-grid gap-2 col-6 mx-auto"><br>
            <button class="btn btn-primary" type="submit" name="" >Signup</button>
          </div>
      </form>

   </div>
</body>
<br>
<jsp:include page="inc/footer.jsp"></jsp:include>