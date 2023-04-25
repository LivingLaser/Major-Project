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
				<form>
				<%
				@SuppressWarnings("unchecked")
				HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
				%>
				    <div class="form-group">
						<label for="name"><b style="font-size: 25px">Customer's message ID</b></label>
						<input type="text" class="form-control" id="name" value="<% out.print(views.get("id")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="name"><b style="font-size: 25px">Name:</b></label>
						<input type="text" class="form-control" id="name" value="<% out.print(views.get("name")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="email"><b style="font-size: 25px">Email:</b></label>
						<input type="email" class="form-control" id="email" value="<% out.print(views.get("email")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="message"><b style="font-size: 25px">Message:</b></label>
						<textarea class="form-control" id="message" rows="5" disabled><% out.print(views.get("message")); %></textarea>
					</div><br><br><div class="text-center"><button onclick="window.print()" class="btn btn-secondary btn-lg">Print</button></div>
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