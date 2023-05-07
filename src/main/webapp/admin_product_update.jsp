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
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_product_update.css">
</head>

<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
<h2 class="text-center">UPDATE PRODUCT</h2>
<br>
<div class="container">
<form action="update_product_db" method="post" enctype="multipart/form-data" class="row g-3">
<%
@SuppressWarnings("unchecked")
HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
%>
  <div class="form-group">
    <label for="exampleInputName">Product Name</label>
    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" required value="<% out.print(views.get("name")); %>" name="name">
  </div>
    <div class="form-group">
    <label for="exampleFormControlTextarea1">Product Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  required name="description"><% out.print(views.get("description")); %></textarea>
  </div><hr>
<br>
   <div class="row">
    <div class="col-md-4">
    <label for="exampleInputName">Product Quantity </label>
    <input type="text" class="form-control" required value="<% out.print(views.get("quantity")); %>" name="quantity">
    </div>
    <div class="col-md-4">
    <label for="exampleInputName text-bold">Product Price </label>
    <input type="number" class="form-control" required value="<% out.print(views.get("price")); %>" name="price">
    </div>
    <div class="col-md-4">
    <label for="exampleInputName text-bold">Product Stock </label>
    <input type="number" class="form-control" required value="<% out.print(views.get("stock")); %>" name="stock">
    
    </div>
   </div>
<hr>
    <div class="col-md-5">
    <div class="d-flex justify-content-center">
    <label class="mr-sm-2" for="inlineFormCustomSelect"><b>SELECT PRODUCT CATEGORY:</b>&nbsp;&nbsp;</label>
      <select class="custom-select mr-sm-2" required id="inlineFormCustomSelect"  name="category">
        <option selected>Choose...</option>
        <option <% if(views.get("category").equals("vegetablesfruits")) { out.print("selected"); } %> value="vegetablesfruits">Vegetables &amp; Fruits</option>
        <option <% if(views.get("category").equals("foograinsmasalas")) { out.print("selected"); } %> value="foograinsmasalas">Foodgrains &amp; Masalas</option>
        <option <% if(views.get("category").equals("eggsmeatsfish")) { out.print("selected"); } %> value="eggsmeatsfish">Eggs, Meats &amp; Fish</option>
      </select>
    </div>
    </div>
    <div class="col-md-1"><div class="vertical-line"></div></div>
    <div class="col-md-6">
     <div class="d-flex justify-content-center">
     <label for="exampleInputName"><i>Previous Image:</i></label>&nbsp;
     <img src="img/<% out.print(views.get("image")); %>" alt="Sample Image" width="80" height="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <label for="exampleInputName"><b>Click here to change image:</b></label>&nbsp;
     <input type="file" class="form-control-file" id="exampleFormControlFile1" name="image">
    </div>
    </div><br><hr><br><br>

  <div class="d-flex justify-content-center">
   <input type="hidden" value="<% out.print(views.get("pid")); %>" name="pid">
   <input type="submit" value="Update Product" class="btn btn-outline-dark">
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