<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (Boolean)session.getAttribute("loggedAdmin")) {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin User's details</title>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
    <div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center"><b>User's Details</b></h1>
				<form class="row g-3">
				<%
				@SuppressWarnings("unchecked")
				HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
				%>
					<div class="col-12">
						<label for="inputName" class="form-label">Name</label>
						<input type="text" class="form-control" id="inputName" value="<% out.print(views.get("name")); %>" disabled>
					  </div>
					<div class="col-md-6">
					  <label for="inputEmail4" class="form-label">Email</label>
					  <input type="email" class="form-control" id="inputEmail4" value="<% out.print(views.get("email")); %>" disabled>
					</div>
					<div class="col-md-6">
					  <label for="inputPhone" class="form-label">Phone No</label>
					  <input type="number" class="form-control" id="inputPhone" value="<% out.print(views.get("phone")); %>" disabled>
					</div>
					<div class="col-12">
					  <label for="inputAddress" class="form-label">Address</label>
					  <input type="text" class="form-control" id="inputAddress" value="<% out.print(views.get("address")); %>" disabled>
					</div>
					<div class="col-md-6">
					  <label for="inputCity" class="form-label">City</label>
					  <input type="text" class="form-control" id="inputCity" value="<% out.print(views.get("city")); %>" disabled >
					</div>
					<div class="col-md-6">
					  <label for="inputpincode" class="form-label">Pin code</label>
					  <input type="text" class="form-control" id="inputpincode" value="<% out.print(views.get("pincode")); %>" disabled>
					</div>
					<hr>
					<div class="row g-3">
						<div class="col">
							<label for="inputpassword" class="form-label">Password</label>
						  <input type="text" class="form-control" value="<% out.print(views.get("password")); %>" aria-label="password" disabled>
						</div>
						<div class="col">
							<label for="inputid" class="form-label">User's ID</label>
						  <input type="text" class="form-control" value="<% out.print(views.get("uid")); %>" aria-label="password" disabled>
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

</body>
</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>