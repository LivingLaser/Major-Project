<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <button class="btn btn-danger btn-lg mx-2">Empty Cart</button>
        </li>
        <li class="nav-item">
            <button class="btn btn-warning btn-lg mx-2">Checkout</button>
        </li>
      </ul>
    </div>
</nav><br>
 <!-- cart item starts -->
 
<div class="jumbotron jumbotron-fluid">
  <div class="container">
       <div class="row">
      <div class="col-md-4">
        <img src="img/FOOD DONOR SAYANTAN DAS.png" alt="Your Item" class="img-cart">
      </div>
      <div class="col-md-1"><div class="vertical-line"></div></div>
      <div class="col-md-6">
        <h3>Item Name</h3>
        <p>Item Description</p>
        <p>Quantity: 1</p>
        <p>Price: $10.99</p>
      </div>
            <div class="col-md-1 mt-auto mb-auto">
       <button class="btn btn-danger mx-auto">Delete</button>
      </div>
    </div>
  <hr></div>
</div>

<div class="container">
  <div class="jumbotron">
 
  </div>
</div>






</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>