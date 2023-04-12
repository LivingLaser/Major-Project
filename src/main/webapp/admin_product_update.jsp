<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
if(session.getAttribute("loggedAdmin") != null && (Boolean)session.getAttribute("loggedAdmin")) {
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
<h2 class="text-center">UPDATE PRODUCT</h2>
<br>
<div class="container">
<form class="row g-3">
  <div class="form-group">
    <label for="exampleInputName">Product Name</label>
    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" required value="" name="">
  </div>
    <div class="form-group">
    <label for="exampleFormControlTextarea1">Product Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  required value="" name=""></textarea>
  </div><hr>
<br>
    <div class="col-md-6">
    <label for="exampleInputName">Product Quantity </label>
    <input type="text" class="form-control"  required value="" name="">
    </div>
    <div class="col-md-6">
    <label for="exampleInputName text-bold">Product Price </label>
    <input type="number" class="form-control"  required value="" name="">
    </div>

<hr>
    <div class="col-md-6">
    <div class="d-flex justify-content-center">
    <label class="mr-sm-2" for="inlineFormCustomSelect"><b>SELECT PRODUCT CATEGORY:</b>&nbsp;&nbsp;</label>
      <select class="custom-select mr-sm-2" required id="inlineFormCustomSelect"  name="">
        <option selected>Choose...</option>
        <option value="vegetablesfruits">Vegetables & Fruits</option>
        <option value="foograinsmasalas">Foodgrains & Masalas</option>
        <option value="eggsmeatsfish">Eggs,Meats & Fish</option>
      </select>
    </div>
    </div>
    <div class="col-md-6">
     <div class="d-flex justify-content-center">
     <label for="exampleFormControlFile1"><b>UPLOAD PRODUCT IMAGE:</b>&nbsp;&nbsp;</label>
     <input type="file" class="form-control-file" id="exampleFormControlFile1" required name="">
    </div>
    </div><br><hr><br><br>

  <div class="d-flex justify-content-center">
   <input type="submit" value="Update Product" name="" class="btn btn-outline-dark">
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