<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkout</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href ="css/checkout.css">
</head>
<style>
#scroll{
  overflow-y: scroll; /* Enable vertical scrolling */
  max-height: 265px; /* Set the maximum height of the div */
}
.card-img-top {
     width: 60px;
     height: 50px;
     
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
 <div class="container">
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
     <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;
     Products will be removed automatically if they are out of stock!
     <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
</div>
   <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
            <h4>Customer Details</h4>
          <div class="details">
          <table class="table">
            <tbody>
            <%
            @SuppressWarnings("unchecked")
            HashMap<String, String> users = (HashMap<String, String>)request.getAttribute("user");
            %>
              <tr>
                <th>Name:</th>
                <td><% out.print(users.get("name")); %></td>
              </tr>
              <tr>
                <th>Email:</th>
                <td><% out.print(users.get("email")); %></td>
              </tr>
              <tr>
                <th>Phone Number:</th>
                <td><% out.print(users.get("phone")); %></td>
              </tr>
              <tr>
                <th>Address:</th>
                <td><% out.print(users.get("address")); %></td>
              </tr>
              <tr>
                <th>City:</th>
                <td><% out.print(users.get("city")); %></td>
              </tr>
              <tr>
                <th>Pincode:</th>
                <td><% out.print(users.get("pincode")); %></td>
              </tr>
            </tbody>
          </table>
        </div>
            </div>
            <div class="col-md-6">
            <h4>Product Details</h4>
            <div class="contaiiner-fluid"  id="scroll">
                
                <table class="table table-striped">
                    <thead class="text-center">
                        <tr>
                            <th>Product Name</th>
                            <th>Quick view</th>
                            <th>Quantity</th>
                            <th>Price</th>                            
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    @SuppressWarnings({"unchecked", "rawtypes"})
                    ArrayList<HashMap> products = (ArrayList<HashMap>)request.getAttribute("product");
                    
                    for(int i=0;i<products.size();i++) {
                    %>
                        <tr>
                            <td class="text-center"><% out.print(products.get(i).get("name")); %></td>
                            <td class="text-center"><img src="img/<% out.print(products.get(i).get("image")); %>" class="card-img-top mx-auto d-block" alt="..."></td>
                            <td class="text-center" class="text-center"><% out.print(products.get(i).get("qty")); %></td>
                            <td class="text-center">₹<% out.print(products.get(i).get("price")); %></td>                           
                        </tr>
                    <% } %>
                    </tbody>
                </table>

        </div><br>
                <% String total = (String)request.getAttribute("total"); %>
                <h3>Total: ₹<% out.print(total); %></h3>
      </div>
            </div>
        </div><br>
        <%
        if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
        	String uid = (String)session.getAttribute("uid");
        %>  <hr>
            <form action="payment" method="post">
            <div class="row justify-content-center">
              <div class="col-md-6">
                <div class="form-group">
                  <select class="form-control" id="paymentMethod" name="payment" >
                    <option value="">Select Payment Method</option>
                    <option value="COD">Cash on delivery</option>
                    <option value="CARD">Debit/Credit Card</option>
                  </select>
                </div>
              </div>
            </div>
                <div class="row justify-content-center">
                <div class="d-grid gap-2 col-6 mx-auto">
                 <input type="hidden" value="<% out.print(uid); %>" name="uid">
                 <button type="submit" id="paymentbtn" class="btn btn-primary mx-auto" disabled>Proceed  to checkout</button><br>
                 </div>
                </div>
                </form>
                <hr>
        <div class="col-md-12">
          <p class="text-muted">© 2023 Grocery Management. All rights reserved.</p>
        </div><br>
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
</body>
<script>
const select = document.getElementById('paymentMethod');
const button = document.getElementById('paymentbtn');

select.addEventListener('change', () => {
  if (select.value !== '') {
    button.removeAttribute('disabled');
  } else {
    button.setAttribute('disabled', '');
  }
});

</script>
</html>