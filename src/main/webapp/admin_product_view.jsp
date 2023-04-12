<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
if(session.getAttribute("loggedAdmin") != null && (Boolean)session.getAttribute("loggedAdmin")) {
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product view</title>
</head>
 <style>
    body {
      background-image: url('https://st.depositphotos.com/1755195/3391/i/600/depositphotos_33916385-stock-photo-blue-dark-abstract-background.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    .card-img-top {
     width: 527px;
     height: 280px;
     object-fit: cover;
}
</style>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
  <div class="container">
  <div class="card mx-auto" style="width: 33rem;">
    <img src="https://img.freepik.com/free-photo/colorful-fruits-tasty-fresh-ripe-juicy-white-desk_179666-169.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Product Name</h5>
      <h6 class="card-title">Product ID</h6>
      <p class="card-text">Product Description: Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam explicabo, fugiat esse assumenda commodi atque!</p>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">Category: </li>
        <li class="list-group-item">Quantity: 10</li>
        <li class="list-group-item">Price: $9.99</li>
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