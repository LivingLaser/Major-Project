<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .card-img-top {
     width: 65px;
     height: 50px;
     object-fit: cover;
}
    .details table {
      margin-bottom: 30px;
    }
    .details table th,
    .details table td {
      padding: 12px 15px;
      text-align: left;
    }
    .details table th {
      background-color: #f1f1f1;
    }
</style>
<link rel="stylesheet" href ="css/checkout.css">
<body>
<jsp:include page="inc/base.jsp"></jsp:include><br>
           <div class="container">
            <div class="row d-flex align-items-baseline">
              <div class="col-md-11">
                <p style="color: #7e8d9f;font-size: 26px;"><strong>Invoice </strong></p>
              </div>
              <div class="col-md-1 float-end">
               <a class="btn btn-outline-dark text-capitalize" onclick="window.print()" data-mdb-ripple-color="dark">Print <i class="fa fa-print" aria-hidden="true"></i></a>
              </div>
              <hr>
            </div></div>

   <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
            <h4>Customer Details</h4>
          <div class="details">
          <table class="table">
            <tbody>
              <tr>
                <th>Name:</th>
                <td>demo name</td>
              </tr>
              <tr>
                <th>Email:</th>
                <td>demo@mail.com</td>
              </tr>
              <tr>
                <th>Phone Number:</th>
                <td>+91 1234567890</td>
              </tr>
              <tr>
                <th>Address:</th>
                <td>123 Street</td>
              </tr>
              <tr>
                <th>City:</th>
                <td>Kolkata</td>
              </tr>
              <tr>
                <th>Pincode:</th>
                <td>700061</td>
              </tr>
            </tbody>
          </table>
        </div>
            </div>
            <div class="col-md-6">
                <h4>Product Details</h4>
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
                <h3>Total: ₹ AMOUNT</h3>
                <!-- Add necessary designs or buttons for payment options -->
                      <div class="row">
        <div class="col-md-12">
          <p class="text-muted">© 2023 Grocery Management. All rights reserved.</p>
        </div>
      </div>
            </div>
        </div><br>
        <%
        if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
        	String uid = (String)session.getAttribute("uid");
        %>  <hr>      
            <div class="row justify-content-center">
              <div class="col-md-6">
                <div class="form-group">
                  <select class="form-control" id="paymentMethod">
                    <option selected>Select Payment Method</option>
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