<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
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
<div class="jumbotron">
  <%
  @SuppressWarnings("unchecked")
  HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
  %>
    <h1 class="display-4"><% out.print(views.get("name")); %>'s DATA</h1>
    <table class="table">
      <tbody>
        <!--ekhane logged in user er id er hrough te data gulo fetch hbe-->

        <tr>
          <th>User's Name:</th>
          <td><% out.print(views.get("name")); %></td>
        </tr>

        <tr>
          <th>User's Email:</th>
          <td><% out.print(views.get("email")); %></td>
        </tr>

        <tr>
          <th>User's Phone No:</th>
          <td><% out.print(views.get("phone")); %>></td>
        </tr>
        
        <tr>
          <th>User's Address:</th>
          <td><% out.print(views.get("address")); %></td>
        </tr>

        <tr>
          <th>User's City:</th>
          <td><% out.print(views.get("city")); %></td>
        </tr>

        <tr>
          <th>User's Area Pincode:</th>
          <td><% out.print(views.get("pincode")); %></td>
        </tr>

        <tr>
          <th>User's ID:</th>
          <td><% out.print(views.get("uid")); %></td>
        </tr>

        <tr>
          <th>User's Password:</th>
          <td><% out.print(views.get("password")); %></td>
        </tr>

      </tbody>
    </table>
  
    <hr class="my-4">
    <p>Any Records cannot be modified. Print a copy of this page ↓</p>
    <p class="lead">
      <button onclick="window.print()" class="btn btn-secondary btn-lg">Print Page</button>
    </p>
  </div>
			
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