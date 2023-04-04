<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin User's details</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
    <div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center"><b>User's Details</b></h1>
				<form class="row g-3">
					<div class="col-12">
						<label for="inputName" class="form-label">Name</label>
						<input type="text" class="form-control" id="inputName" disabled placeholder="Enter your full name...">
					  </div>
					<div class="col-md-6">
					  <label for="inputEmail4" class="form-label">Email</label>
					  <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your email" disabled>
					</div>
					<div class="col-md-6">
					  <label for="inputPhone" class="form-label">Phone No</label>
					  <input type="number" class="form-control" id="inputPhone" placeholder="Enter your 10 digits Phone No" disabled>
					</div>
					<div class="col-12">
					  <label for="inputAddress" class="form-label">Address</label>
					  <input type="text" class="form-control" id="inputAddress" placeholder="Your Address..." disabled>
					</div>
					<div class="col-md-6">
					  <label for="inputCity" class="form-label">City</label>
					  <input type="text" class="form-control" id="inputCity" placeholder="Enter your City here..." disabled >
					</div>
					<div class="col-md-6">
					  <label for="inputpincode" class="form-label">Pin code</label>
					  <input type="text" class="form-control" id="inputpincode" placeholder="Area PIN code" disabled>
					</div>
					<hr>
					<div class="row g-3">
						<div class="col">
							<label for="inputpassword" class="form-label">Password</label>
						  <input type="text" class="form-control" placeholder="password" aria-label="password" disabled>
						</div>
						<div class="col">
							<label for="inputid" class="form-label">User's ID</label>
						  <input type="text" class="form-control" placeholder="id" aria-label="password" disabled>
						</div>
					  </div>
					<br>
					  <div class="text-center">
						<button onclick="window.print()" class="btn btn-secondary btn-lg">Print</button>
					  </div>
					 
				  </form>
			
			   </div>
			</div>
		</div>
    </div>

</body>
</html>