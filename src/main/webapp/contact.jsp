<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>contact us</title>
    <link rel="stylesheet" href="css/contact.css">
    <style>
    body {
	background-image: url('https://img.freepik.com/premium-photo/contact-us-hand-man-holding-mobile-smartphone-with-phone-email-chat-icon-cutomer-support-concept-gray-wide-banner_256259-2770.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
}

  .contact-heading {
  font-family: 'Arial', sans-serif;
  color: #333;
  font-size: 36px;
  text-transform: uppercase;
  letter-spacing: 1px;
  margin-bottom: 20px;
}
    </style>
</head>

<body>
<jsp:include page="inc/base.jsp"></jsp:include><br>
    
    <div class="container">
    <div class="row">
    <div class="col-md-8 float-left">
     
     <h1 class="text-center contact-heading"><b>Contact Us</b></h1>
     <br>
      <form action="contact_us" method="post" class="row g-3">
        <div class="col-md-6">
            <label for="inputname" class="form-label text-dark"><b>Name</b></label>
            <input type="text" class="form-control" id="inputname" placeholder="Enter your name..." required name="name" >
        </div>
        <div class="col-md-6">
            <label for="inputEmail4" class="form-label text-dark"><b>Email</b></label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your email..." required name="email" >
        </div>
        <div class="col-12">
            <label for="exampleFormControlTextarea1" class="form-label text-dark"><b>Write your message</b></label>
            <textarea class="form-control" id="exampleFormControlTextarea1" required name="message" rows="3"placeholder="write your message here"></textarea>
        </div>
         
        <div class="d-grid gap-2 col-6 mx-auto"><br>
            <button class="btn btn-primary" type="submit">Submit</button>
        </div>
      </form>
      </div>
      </div>
    </div>

</body><br>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>