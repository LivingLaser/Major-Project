<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>
<link rel="stylesheet" href="css/about.css">
<style>
 
    body {
      background-image: url('img/aboutus.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    .footer{
    color: white;
    }
    a {
     color: white;
    }

</style>
</head>

<body>
<jsp:include page="inc/base.jsp"></jsp:include>
<section id="about-us">
  <div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-6">
        <h2 class="section-title text-white mb-4">Who Are We?</h2>
        <p class="lead text-white mb-4">We are a grocery delivery service that is dedicated to making your life easier. Our mission is to provide fresh, high-quality groceries at affordable prices, delivered straight to your door.</p>
        <p class="text-white">Our team is made up of passionate individuals who are committed to ensuring that you have a hassle-free grocery shopping experience. We understand that your time is valuable, which is why we offer a wide selection of products that you can easily order online.</p>
      </div>
      <div class="col-md-6">
       
      </div>
    </div>
    <div class="row mt-5">
      <div class="col-md-12">
        <h2 class="section-title text-white mb-4"><b>Why Choose Us?</b></h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Convenient Online Ordering</h5>
            <p class="card-text">Easily order online at any time and from any device.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Fresh, High-Quality Products</h5>
            <p class="card-text">We select only the freshest and highest quality products for our customers.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Affordable Prices</h5>
            <p class="card-text">We strive to offer our customers the best possible prices.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Fast and Reliable Delivery</h5>
            <p class="card-text">We are committed to delivering your groceries as quickly and reliably as possible.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Excellent Customer Service</h5>
            <p class="card-text">Our friendly and knowledgeable customer service team is always here to help you.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="card h-100 shadow">
          <div class="card-body">
            <h5 class="card-title">Sustainable Practices</h5>
             <p class="card-text">Sustainable groceries are goods sourced from production systems that are conscious of their impact on people.</p>
          </div>
        </div>
      </div>
     </div>
    </div>
   </section>
</body>

<br><footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
         <h5>About Us</h5>
          <p>We are a grocery management website that provides you all the daily need of grocery at your door step.</p>
        </div>
        <div class="col-md-4">
          <h5>Contact Us</h5>
          <ul class="list-unstyled">
            <li><i class="fa fa-map-marker" aria-hidden="true"></i>  123 Main St, kolkata INDIA</li>
            <li><a href="tel:+911234567890" style="text-decoration: none; color: white;"><i class="fa fa-phone" aria-hidden="true"></i>  (+91)1234567890 </a></li>
            <li><a href="mailto:info@groceryapp.com" style="text-decoration: none; color: white;"><i class="fa fa-envelope" aria-hidden="true"></i>  info@groceryapp.com</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5>Follow Us</h5>
          <ul class="list-unstyled">
            <li><a class="text-decoration-none text-white" href="https://www.facebook.com/"><i class="fa fa-facebook-official" aria-hidden="true"></i> Facebook</a></li>
            <li><a class="text-decoration-none text-white" href="https://www.twitter.com/"><i class="fa fa-twitter-square" aria-hidden="true"></i> Twitter</a></li>
            <li><a class="text-decoration-none text-white" href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i> Instagram</a></li>
          </ul>
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-md-12">
          <b class="text-white">© 2023 Grocery Management. All rights reserved.</b>
        </div>
      </div>
    </div>
  </footer>
      
</html>