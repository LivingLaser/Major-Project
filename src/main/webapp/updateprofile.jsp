<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title>update profile</title>
<link rel="stylesheet" href="css/updateprofile.css">
</head>
<body>

   <jsp:include page="inc/base.jsp"></jsp:include>
   
   <h1 class="text-center">UPDATE YOUR DATA</h1><br>
   <div class="container d-grid gap-2 col-6 mx-auto">

    <form action="update_profile_db" method="post" class="row g-3">
    <%
    @SuppressWarnings("unchecked")
	HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
    %>
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" value="<% out.print(views.get("name")); %>" name="name" >
          </div>
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4" value="<% out.print(views.get("email")); %>" name="email" >
        </div>
        <div class="col-md-6">
          <label for="inputPhone" class="form-label">Phone No</label>
          <input type="number" class="form-control" id="inputPhone" value="<% out.print(views.get("phone")); %>" name="phone" >
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Address</label>
          <input type="text" class="form-control" id="inputAddress" value="<% out.print(views.get("address")); %>" name="address" >
        </div>
        <div class="col-md-6">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity" value="<% out.print(views.get("city")); %>" name="city" >
        </div>
        <div class="col-md-6">
          <label for="inputpincode" class="form-label">Pin code</label>
          <input type="text" class="form-control" id="inputpincode" value="<% out.print(views.get("pincode")); %>" name="pincode" >
        </div>
        <hr>
        <div class="col-12">
            <label for="inputPassword" class="form-label">PASSWORD</label>
            <input type="password" class="form-control" id="inputPassword" value="<% out.print(views.get("password")); %>" name="password" >
          </div>
        <br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <input type="hidden" name="id" value="<% out.print(views.get("id")); %>">
            <button class="btn btn-secondary" type="submit" name="" >UPDATE</button>
          </div>
      </form>

   </div>
   <br>
   <jsp:include page="inc/footer.jsp"></jsp:include>
</body>
</html>