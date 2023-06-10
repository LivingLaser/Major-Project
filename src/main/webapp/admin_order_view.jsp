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
<title>order</title>
</head>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<div class="container">
<br>
<div class="jumbotron">
    <h1 class="display-4">Order Informations</h1>
    <table class="table">
      <tbody>
        <%
        @SuppressWarnings("unchecked")
        HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
        %>
        <tr>
          <th>Customer's User ID:</th>
          <td><% out.print(views.get("uid")); %></td>
        </tr>

        <tr>
          <th>Customer's Name:</th>
          <td><% out.print(views.get("uname")); %></td>
        </tr>

        <tr>
          <th>Customer Email:</th>
          <td><% out.print(views.get("email")); %></td>
        </tr>
        
        <tr>
          <th>Customer Phone No:</th>
          <td><% out.print(views.get("phone")); %></td>
        </tr>

        <tr>
          <th>Customer Address:</th>
          <td><% out.print(views.get("address")); %>, <% out.print(views.get("city")); %></td>
        </tr>

        <tr>
          <th>Customer Pincode:</th>
          <td><% out.print(views.get("pincode")); %></td>
        </tr>
        
        <tr>
          <th>Order Date &amp; Time:</th>
          <td><% out.print(views.get("date")); %>&nbsp;&nbsp;<% out.print(views.get("time")); %></td>
        </tr>

        <tr>
          <th>Mode of payment</th>
          <td><% out.print(views.get("payment")); %></td>
        </tr>
        
        <tr>
          <th>Item Ordered:</th>
          <td><% out.print(views.get("pname")); %> - <% out.print(views.get("quantity")); %>&nbsp;&nbsp;(x<% out.print(views.get("qty")); %>)</td>
        </tr>
        
        <tr>
          <th>Amount:</th>
          <td>₹<% out.print(views.get("price")); %></td>
        </tr>
      </tbody>
    </table>
  
    <hr class="my-4">
    <p>Any Records cannot be modified for monitoring actual order Informations.</p>
    <p class="lead">
      <button onclick="window.print()" class="btn btn-secondary btn-lg">Print</button>
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