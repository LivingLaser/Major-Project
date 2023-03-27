<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="inc/base.jsp"></jsp:include>

<!-- ekhane user chaille nijer profile update korbe ar placeholder a existing data fetch kore show hbe -->

<style>
    body {
      background-image: url('https://static.storyweaver.org.in/illustrations/58827/large/14.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
</style>

<body>
   <h1 class="text-center">UPDATE YOUR DATA</h1><br>
   <div class="container d-grid gap-2 col-6 mx-auto">

    <form class="row g-3">
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" name="" placeholder="">
          </div>
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4" placeholder="" name="" >
        </div>
        <div class="col-md-6">
          <label for="inputPhone" class="form-label">Phone No</label>
          <input type="number" class="form-control" id="inputPhone" placeholder="" name="" >
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Address</label>
          <input type="text" class="form-control" id="inputAddress" placeholder="" name="" >
        </div>
        <div class="col-md-6">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity" placeholder="" name="" >
        </div>
        <div class="col-md-6">
          <label for="inputpincode" class="form-label">Pin code</label>
          <input type="text" class="form-control" id="inputpincode" placeholder="" name="" >
        </div>
        <hr>
        <div class="col-12">
            <label for="inputPassword" class="form-label">PASSWORD</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="" name="" >
          </div>
        <br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-secondary" type="submit" name="" >UPDATE</button>
          </div>
      </form>

   </div>
</body><br>
<jsp:include page="inc/footer.jsp"></jsp:include>