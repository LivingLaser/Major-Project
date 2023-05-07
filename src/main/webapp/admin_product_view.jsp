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
<title>product view</title>
<link rel="stylesheet" href="css/admin_product_view.css">
</head>

<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
  <div class="container">
  <%
  @SuppressWarnings("unchecked")
  HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
  %>
  <div class="card mx-auto" style="width: 33rem;">
    <img src="img/<% out.print(views.get("image")); %>" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Product Name: <% out.print(views.get("name")); %></h5>
      <h6 class="card-title">Product ID: <% out.print(views.get("pid")); %></h6>
      <p class="card-text">Product Description: <% out.print(views.get("description")); %></p>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">Category: <% out.print(views.get("category")); %></li>
        <li class="list-group-item">Quantity: <% out.print(views.get("quantity")); %></li>
        <li class="list-group-item">In Stock: <% out.print(views.get("stock")); %> units</li>
        <li class="list-group-item">Price: $<% out.print(views.get("price")); %></li>
      </ul>
      <div class="text-center"> <button onclick="window.print()" class="btn btn-outline-dark">Print Page</button> </div>
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