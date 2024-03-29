<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert product</title>
<style>
body {
      background-image: url('https://img.freepik.com/premium-vector/background-white-elegant-texture_23-2148438404.jpg?w=360');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
}
</style>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
<h2 class="text-center">ADD NEW PRODUCT</h2>
<br>
<div class="container">
<form action="add_product" method="post" enctype="multipart/form-data" class="row g-3">
  <div class="form-group">
    <label for="exampleInputName">Product Name</label>
    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" required name="name">
  </div>
    <div class="form-group">
    <label for="exampleFormControlTextarea1">Product Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  required name="description"></textarea>
  </div><hr>
<br>
    <div class="col-md-4">
    <label for="exampleInputName">Product Quantity</label>
    <input type="text" class="form-control"  required name="quantity">
    </div>
    <div class="col-md-4">
    <label for="exampleInputName text-bold">Product Price</label>
    <input type="number" class="form-control"  required name="price">
    </div>
    <div class="col-md-4">
    <label for="exampleInputName text-bold">Stock Qty</label>
    <input type="number" class="form-control"  required name="stock">
    </div>
    

<hr>
   <div class="row">
    <div class="col-md-6">
    <div class="d-flex justify-content-center">
    <label class="mr-sm-2" for="inlineFormCustomSelect"><b>SELECT PRODUCT CATEGORY:</b>&nbsp;&nbsp;</label>
      <select class="custom-select mr-sm-2" required id="inlineFormCustomSelect"  name="category">
        <option selected>Choose...</option>
        <option value="vegetablesfruits">Vegetables &amp; Fruits</option>
        <option value="foograinsmasalas">Foodgrains &amp; Masalas</option>
        <option value="eggsmeatsfish">Eggs, Meats &amp; Fish</option>
      </select>
    </div>
    </div>
    <div class="col-md-6">
     <div class="d-flex justify-content-center">
     <label for="exampleFormControlFile1"><b>UPLOAD PRODUCT IMAGE:</b>&nbsp;&nbsp;</label>
     <input type="file" class="form-control-file" id="exampleFormControlFile1" required name="image">
    </div>
   </div>
    </div><br><hr><br><br>

  <div class="d-flex justify-content-center">
   <input type="submit" value="Add Product" class="btn btn-outline-dark">
  </div>
  
</form>
</div>
</body>
</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>