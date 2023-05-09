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
        <!--ekhane logged in user er id er hrough te data gulo fetch hbe-->
        <tr>
          <th>Customer's User ID:</th>
          <td>001</td>
        </tr>

        <tr>
          <th>Customer's Name:</th>
          <td>abhirup ghosh</td>
        </tr>

        <tr>
          <th>Customer Email:</th>
          <td>abc@gmail.com</td>
        </tr>
        
        <tr>
          <th>Customer Phone No:</th>
          <td>1010362915</td>
        </tr>

        <tr>
          <th>Customer Address:</th>
          <td>1/23 road</td>
        </tr>

        <tr>
          <th>Customer Pincode:</th>
          <td>10220382</td>
        </tr>
        
        <tr>
          <th>Order Date:</th>
          <td>12/10/2001</td>
        </tr>

        <tr>
          <th>Total Amount:</th>
          <td>$ 2000</td>
        </tr>
        
        <tr>
          <th>Items Ordered:</th>
          <td>
<!-- ekhane loop use kore cart er item gulo load krabi -->
            <table>
              <tbody>
                <tr>
                  <td>item1</td>
                  <td>item2</td>
                  <td>item3</td>
                </tr>
              </tbody>
            </table>

          </td>
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