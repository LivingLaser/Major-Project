<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
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
            <div class="col-md-6 float-left">
                <h4>Accepted Cards</h4>
            </div>
            <div class="col-md-6 float-right">
                <img src="https://img.icons8.com/color/48/000000/visa.png"/>
                <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png"/>
                <img src="https://img.icons8.com/color/48/000000/maestro.png"/>
            </div>
            <br><br>
            <form class="g-3">
                <label for="exampleInputEmail1" class="form-label">Card holder's Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                 <br>
                <label for="exampleInputEmail1" class="form-label">Card Number</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <br>
                <div class="col-md-3 float-left">
                <label for="exampleInputEmail1" class="form-label">Expiry Month</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">   
                </div>

                <div class="col-md-3 float-left">
                <label for="exampleInputEmail1" class="form-label">Expiry Year</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>

                <div class="col-md-2 float-left">&nbsp;</div>

                <div class="col-md-4 float-left">
                <label for="exampleInputEmail1" class="form-label">CVV</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"><br>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                  <button class="btn btn-primary" type="submit" name="" >PAY</button>
                </div>
            </form>
            <br>
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