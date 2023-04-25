<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .card-img-top {
     width: 65px;
     height: 50px;
     object-fit: cover;
}
</style>
<body>
<jsp:include page="inc/base.jsp"></jsp:include>

   <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <h2>Customer Information</h2>
                <form action="" method="post">
                    <div class="form-group">
                        <label for="customerName">Name</label>
                        <input type="text" class="form-control" id="customerName" placeholder="Enter your name" name="">
                    </div>
                    <div class="form-group">
                        <label for="customerEmail">Email</label>
                        <input type="email" class="form-control" id="customerEmail" placeholder="Enter your email"  name="">
                    </div>
                    <div class="form-group">
                        <label for="customerAddress">Address</label>
                        <input type="text" class="form-control" id="customerAddress"
                            placeholder="Enter your address" name="">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="customerCity">City</label>
                            <input type="text" class="form-control" id="customerCity" placeholder="Enter your city" name="">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="customerPincode">Pincode</label>
                            <input type="text" class="form-control" id="customerPincode"
                                placeholder="Enter your pincode" name="">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <h2>Product Details</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Quick view</th>
                            <th>Quantity</th>
                            <th>Price</th>                            
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td>Product 1</td>
                            <td><img src="https://img.freepik.com/free-photo/colorful-fruits-tasty-fresh-ripe-juicy-white-desk_179666-169.jpg" class="card-img-top mx-auto d-block" alt="..."></td>
                            <td>1</td>
                            <td>$19.99</td>                           
                        </tr>

                    </tbody>
                </table>
                <h3>Total: $XXX.XX</h3>
                <!-- Add necessary designs or buttons for payment options -->
            </div>
        </div><br>
        <%
        if(session.getAttribute("loggedIn") != null && (Boolean)session.getAttribute("loggedIn")) {
        	String uid = (String)session.getAttribute("uid");
        %>        
            <div class="row justify-content-center">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="paymentMethod">Select Payment Method</label>
                  <select class="form-control" id="paymentMethod">
                    <option selected>Open this select menu</option>
                    <option value="cod">Cash on delivery</option>
                    <option value="card">Debit/Credit Card</option>
                  </select>
                </div>
              </div>
            </div><br>
                <div class="row justify-content-center">
                <div class="d-grid gap-2 col-6 mx-auto">
                 <button type="button" id="paymentbtn" class="btn btn-primary mx-auto">Proceed  to checkout</button>
                 </div>
                </div>
        <%
        }
        else {
        %>
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="jumbotron text-center">
        <h3 class="display-6">Login Required</h3>
        <p class="lead">Please log in to proceed further.</p>
        <hr class="my-4">
        <a href="your-login-page-url" class="btn btn-primary btn-lg">Log In</a>
      </div>
    </div>
  </div>

        
        
        <% } %>
        <!-- <div class="d-grid gap-2 col-6 mx-auto">
            <button onclick="window.print()" class="btn btn-secondary btn-lg btn-block">Download Invoice</button>
        </div> -->
    </div>
</body>
</html>