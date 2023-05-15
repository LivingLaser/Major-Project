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
<title>product view</title>
<style>

</style>
</head>

<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<br>
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <%
        @SuppressWarnings("unchecked")
        HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
        %>
      <h1 class="display-4 text-center"><% out.print(views.get("name")); %>'s Details</h1><br>
      <div class="row">
        <div class="col-md-7 float-left">
         <table class="table">
           <tbody>
            <tr>
                <th>Product Name:</th>
                <td><% out.print(views.get("name")); %></td>
            </tr>

            <tr>
                <th>Product ID:</th>
                <td><% out.print(views.get("pid")); %></td>
            </tr>

            <tr>
                <th>Product Category:</th>
                <td><% out.print(views.get("category")); %></td>
            </tr>

            <tr>
                <th>Product Quantity:</th>
                <td><% out.print(views.get("quantity")); %></td>
            </tr>

            <tr>
                <th>Product in Stock:</th>
                <td><% out.print(views.get("stock")); %></td>
            </tr>

            <tr>
                <th>Product Retail Price:</th>
                <td>₹&nbsp;<% out.print(views.get("price")); %></td>
            </tr>

            <tr>
                <th>Product Description:</th>
                <td><% out.print(views.get("description")); %></td>
            </tr>

           </tbody>
         </table>
        </div>
        <div class="col-md-5 float-right">
            <div class="text-center"><h3>Product Image:</h3></div>
            <div class="container d-flex justify-content-center align-items-center"><img src="img/<% out.print(views.get("image")); %>" class="imgproduct " alt="..." width="430" height="290"></div>
            
        </div>
      </div>
      <hr class="my-4">
      <p>Any Records cannot be modified. Print a copy of this page ↓</p>
      <p class="lead">
        <button onclick="window.print()" class="btn btn-secondary btn-lg">Print Page</button>
      </p>
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