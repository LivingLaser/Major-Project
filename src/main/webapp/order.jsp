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
<!-- loop -->
<div class="jumbotron mt-3">
<div class="row">
<div class="col-md-6">
<table class="table">
  <tbody>
    <tr>
      <th>Date:</th>
      <td>10/12/2004</td>
    </tr>
    <tr>
      <th>Time:</th>
      <td>10:30:33</td>
    </tr>
    <tr>
      <th>Product:</th>
      <td>ice cream</td>
    </tr>
    <tr>
      <th>Amount:</th>
      <td>₹ 100</td>
    </tr>
    <tr>
      <th>Mode of payment:</th>
      <td>CARD</td>
    </tr>
    <tr>
      <th>Phone Number</th>
      <td>1010376274</td>
    </tr>
    <tr>
      <th>Address:</th>
      <td>abcd road</td> <!--ekhane user theke user er addresss tar pore coma dia city ar tr por coma dia pincode print korabi-->
    </tr>
  </tbody>
</table> 
</div>

<div class="col-md-6">
  <div class="text-center"><h3>Product Image:</h3></div>
  <div class="container d-flex justify-content-center align-items-center"><img src="https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg" class="imgproduct " alt="..." width="410" height="260"></div>
  
</div>

</div>
</div>
<!-- loop end -->
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