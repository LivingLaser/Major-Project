<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>
</head>
<body>
<jsp:include page="inc/base.jsp"></jsp:include>
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 ml-5 h1"><b style="font-size: 30px">My Orders</b></span>
    <span class="d-flex"><button onclick="window.print()" class="btn btn-secondary btn-lg">Print Page</button></span>
  </div>
</nav>

<div class="container">
<%
@SuppressWarnings({"rawtypes", "unchecked"})
ArrayList<HashMap> orders = (ArrayList<HashMap>)request.getAttribute("order");

if(!orders.isEmpty()) {
	for(int i=0;i<orders.size();i++) {
%>
<div class="jumbotron mt-3">
<div class="row">
<div class="col-md-6">
<table class="table">
  <tbody>
    <tr>
      <th>Date:</th>
      <td><% out.print(orders.get(i).get("date")); %></td>
    </tr>
    <tr>
      <th>Time:</th>
      <td><% out.print(orders.get(i).get("time")); %></td>
    </tr>
    <tr>
      <th>Product:</th>
      <td><% out.print(orders.get(i).get("name")); %> - <% out.print(orders.get(i).get("quantity")); %></td>
    </tr>
    <tr>
      <th>Amount:</th>
      <td>₹<% out.print(orders.get(i).get("price")); %> x <% out.print(orders.get(i).get("qty")); %> = ₹<% out.print(orders.get(i).get("total")); %></td>
    </tr>
    <tr>
      <th>Mode of payment:</th>
      <td><% out.print(orders.get(i).get("payment")); %></td>
    </tr>
    <tr>
      <th>Phone Number</th>
      <td><% out.print(orders.get(i).get("phone")); %></td>
    </tr>
    <tr>
      <th>Address:</th>
      <td><% out.print(orders.get(i).get("address")); %>, <% out.print(orders.get(i).get("city")); %> - <% out.print(orders.get(i).get("pincode")); %></td>
    </tr>
  </tbody>
</table> 
</div>

<div class="col-md-6">
  <div class="text-center"><h3>Product Image:</h3></div>
  <div class="container d-flex justify-content-center align-items-center"><img src="img/<% out.print(orders.get(i).get("image")); %>" class="imgproduct " alt="..." width="410" height="260"></div>
  
</div>

</div>
</div>
<%
	}
}
else {
%>
	<jsp:include page="inc/emptyorder.jsp"></jsp:include>
<% } %>
</div>

</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>
<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>