<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
%>

<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<style>
.img-cart {
  width: 330px;
  height: 200px;
  object-fit: cover;
}

.vertical-line {
  border-left: 2px solid black;
  height: 200px;
  margin-left: 2px;
}


</style>
</head>
<body>
<jsp:include page="inc/base.jsp"></jsp:include>

<!-- checkout button -->
<nav class="navbar navbar-expand-lg navbar- bg-transparent">
<a class="navbar-brand" href="#"><b class="ml-4 h2">My Cart</b></a>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <% String uid = (String)session.getAttribute("uid"); %>
            <form action="empty_cart" method="post">
            <input type="hidden" name="uid" value="<% out.print(uid); %>">
            <button onclick="return confirm('Empty cart ?')" type="submit" class="btn btn-danger btn-lg mx-2">Empty Cart  <i class="fa fa-trash-o" aria-hidden="true"></i></button>
            </form>
        </li>
        <li class="nav-item">
            <form action="checkout" method="post">
            <input type="hidden" name="uid" value="<% out.print(uid); %>">
            <button type="submit" class="btn btn-warning btn-lg mx-2">Checkout  <i class="fa fa-credit-card-alt" aria-hidden="true"></i></button>
            </form>
        </li>
      </ul>
    </div>
</nav><br>
 <!-- cart item starts -->
<%
@SuppressWarnings({"unchecked", "rawtypes"})
ArrayList<HashMap> products = (ArrayList<HashMap>)request.getAttribute("product");

if(!products.isEmpty()) {
	for(int i=0;i<products.size();i++) {
%>
<div class="container">
<div class="jumbotron" >
       <div class="row">
      <div class="col-md-4">
        <img src="img/<% out.print(products.get(i).get("image")); %>" alt="Your Item" class="img-cart">
      </div>
      <div class="col-md-1"><div class="vertical-line"></div></div>
      <div class="col-md-6">
        <h3><% out.print(products.get(i).get("name")); %></h3>
        <p><% out.print(products.get(i).get("description")); %></p>
        <p>Quantity: <% out.print(products.get(i).get("quantity")); %></p>
        <p>Price: $<% out.print(products.get(i).get("price")); %></p>
        <p>Qty: <% out.print(products.get(i).get("qty")); %></p>
      </div>
      <div class="col-md-1 mt-auto mb-auto">
       <form action="delete_cart_item" method="post">
       <input type="hidden" name="uid" value="<% out.print(products.get(i).get("uid")); %>">
       <input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
       <button type="submit" style="padding-left: 17px; padding-right: 17px;" class="btn btn-danger mx-auto"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
       </form>
      </div>
    </div>
  <hr></div>
</div>

<%
	}
}

else {
%>
	<jsp:include page="inc/emptycart.jsp"></jsp:include>
<% } %>
</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>

<% 
}
else {
%>

<jsp:include page="login.jsp"></jsp:include>

<% } %>