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
<title>Admin message view</title>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
    <div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">User's Feedback Messages</h1>
<div class="jumbotron">
    <h1 class="display-4">Customer's Message</h1>
    <table class="table">
      <tbody>
        <!--ekhane logged in user er id er hrough te data gulo fetch hbe-->
        <%
				@SuppressWarnings("unchecked")
				HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
				%>
		
        <tr>
          <th>Customer's Message ID:</th>
          <td><% out.print(views.get("id")); %></td>
        </tr>

        <tr>
          <th>Customer's Name:</th>
          <td><% out.print(views.get("name")); %></td>
        </tr>

        <tr>
          <th>Customer Email:</th>
          <td><% out.print(views.get("email")); %></td>
        </tr>
        
        <tr>
          <th>Customer's Message:</th>
          <td><% out.print(views.get("message")); %></td>
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