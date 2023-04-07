<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin message view</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
						<label for="name"><h4><b>Customer's message ID</b></h4></label>
						<input type="text" class="form-control" id="name" value="<% out.print(views.get("id")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="name"><h4><b>Name:</b></h4></label>
						<input type="text" class="form-control" id="name" value="<% out.print(views.get("name")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="email"><h4><b>Email:</b></h4></label>
						<input type="email" class="form-control" id="email" value="<% out.print(views.get("email")); %>" disabled>
					</div><br>
					<div class="form-group">
						<label for="message"><h4><b>Message:</b></h4></label>
						<textarea class="form-control" id="message" rows="5" disabled><% out.print(views.get("message")); %></textarea>
					</div><br><br><div class="text-center"><button onclick="window.print()" class="btn btn-secondary btn-lg">Print</button> </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>