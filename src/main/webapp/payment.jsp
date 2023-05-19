<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment</title>
</head>
<body>
<jsp:include page="inc/base.jsp"></jsp:include><br>
  <div class="container">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h2 class= "text-center">PAYMENT</h2><br>
            <div class="row">
            <div class="col-md-8 mx-auto">
            <div class="col-md-6 float-left">
                <h4>Accepted Cards</h4>
            </div>
            <div class="col-md-6 float-right">
                <img src="https://img.icons8.com/color/48/000000/visa.png"/>
                <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png"/>
                <img src="https://img.icons8.com/color/48/000000/maestro.png"/>
            </div>
            <br><br>
            <form action="card" method="post" class="g-3">
                <label for="exampleInputEmail1" class="form-label">Card holder's Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your name.">
                 <br>
                <label for="exampleInputEmail1" class="form-label">Card Number</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="xxxx-xxxx-xxxx-xxxx">
                  <br>
                <div class="col-md-4 float-left">
                <label for="exampleInputEmail1" class="form-label">Expiry Month</label>
                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option selected>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                </select>
                </div>

                <div class="col-md-4 float-left">
                <label for="exampleInputEmail1" class="form-label">Expiry Year</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="2027">
                </div>

                <div class="col-md-4 float-left">
                <label for="exampleInputEmail1" class="form-label">CVV</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="***"><br>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                  <button class="btn btn-primary" type="submit" disabled>PAY</button>
                </div>
                <br>               
            </form>
            </div>
            </div>
           
            <div class="text-center text-danger h2">
                This feature is not available right now!
            </div>
             <div class="alert alert-warning alert-dismissible fade show mt-2" role="alert">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;
                 <strong>Our Website is currently undergoing maintenance. We appreciate your patience and understanding.</strong>
                 
                 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
             </div>
             <div class="text-center">
             <a href="index.jsp" class="h6 ml-4 text-decoration-none text-primary">Go to home page.</a>
             </div>
        </div>
        <div class="col-md-2"></div>
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