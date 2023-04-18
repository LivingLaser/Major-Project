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
 <h3 class="text-center"><b>UPDATE USER'S DATA</b></h3><br>
   <div class="container">

    <form action="update_user_db" method="post" class="row g-3">
    <%
    @SuppressWarnings("unchecked")
	HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
    %>
        <div class="col-12">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="inputName" required value="<% out.print(views.get("name")); %>" name="name">
          </div>
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail4" required value="<% out.print(views.get("email")); %>" name="email" >
        </div>
        <div class="col-md-6">
          <label for="inputPhone" class="form-label">Phone No</label>
          <input type="number" class="form-control" id="inputPhone" required value="<% out.print(views.get("phone")); %>" name="phone" >
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Address</label>
          <input type="text" class="form-control" id="inputAddress" required value="<% out.print(views.get("address")); %>" name="address" >
        </div>
        <div class="col-md-6">
          <label for="inputCity" class="form-label">City</label>
          <input type="text" class="form-control" id="inputCity" required value="<% out.print(views.get("city")); %>" name="city" >
        </div>
        <div class="col-md-6">
          <label for="inputpincode" class="form-label">Pin code</label>
          <input type="text" class="form-control" id="inputpincode" required value="<% out.print(views.get("pincode")); %>" name="pincode" >
        </div>
        <hr>
        <div class="col-md-6">
          <label for="inputpassword" class="form-label">PASSWORD</label>
          <input type="text" class="form-control" id="inputpassword" required value="<% out.print(views.get("password")); %>" disabled >
        </div>
        <div class="col-md-6">
          <label for="inputid" class="form-label">USER ID</label>
          <input type="text" class="form-control" id="inputid" value="<% out.print(views.get("uid")); %>" disabled >
          <input type="hidden" class="form-control" id="inputid" value="<% out.print(views.get("uid")); %>" name="uid" >
        </div>
        <br>
          <div class="d-grid gap-2 col-6 mx-auto">
            <button type="submit" class="btn btn-primary">UPDATE</button>
          </div>
      </form>

   </div>
</body>
</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>