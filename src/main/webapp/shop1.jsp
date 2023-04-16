<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shop</title>
<style>
 .left-quantity
 {
  float:left;
 }
 .right-price
 {
  float:right;
 }
 .card-img-top 
 {
  width: auto;
  height: 155px;
  object-fit: cover;
  }
</style>
</head>
<body>
<jsp:include page="inc/base.jsp"></jsp:include>
<jsp:include page="inc/shopheader.jsp"></jsp:include>
<div class="container">

<div class="card" style="width: 16rem;">
  <img class="card-img-top" src="img/FOOD DONOR SAYANTAN DAS.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title text-center">Product Name</h5>
    <p class="card-text">description of product , long text.......................</p>
   <ul class="list-group list-group-flush">
    <li class="list-group-item"><div class="left-quantity">Quantity:</div>
                                <div class="right-price">Price ₹:</div>
    </li>
  </ul>
 </div>

    <div class="card-footer text-center"><a href="#" class="btn btn-warning">Add to Cart</a></div>

</div>



</div>
</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>