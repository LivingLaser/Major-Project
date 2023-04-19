<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shop</title>
<link rel="stylesheet" href="css/shop.css">
</head>
<body>
<jsp:include page="inc/base.jsp"></jsp:include>
<jsp:include page="inc/shopheader.jsp"></jsp:include>

<div class="container">
<div class="row">
<%
@SuppressWarnings({"unchecked", "rawtypes"})
ArrayList<HashMap> products = (ArrayList<HashMap>)request.getAttribute("product");
String uid = (String)session.getAttribute("uid");

for(int i=0;i<products.size();i++) {
%>
<div class="col-12 col-md-3 col-sm-3 col-lg-3 mx-auto">
<div class="card mb-5" style="width: 16rem;">
  <img class="card-img-top" src="img/<% out.print(products.get(i).get("image")); %>" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title text-center"><% out.print(products.get(i).get("name")); %></h5>
    <p class="card-text"><% out.print(products.get(i).get("description")); %></p>
   <ul class="list-group list-group-flush">
    <li class="list-group-item">
    	<div class="left-quantity">Quantity: <% out.print(products.get(i).get("quantity")); %></div>
    	<div class="right-price">Price: ₹<% out.print(products.get(i).get("price")); %></div>
    </li>
  </ul>
 </div>

    <div class="card-footer text-center">
    	<form action="add_cart" method="post">
    	<input type="hidden" name="uid" value="<% out.print(uid); %>">
    	<input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
    	<button type="submit" class="btn btn-warning">Add to Cart</button>
    	</form>
    </div>
    
</div>
</div>
<% } %>
</div>
</div>

</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>