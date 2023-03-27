<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
    body {
      background-image: url('https://www.coldflowmechanical.com.au/wp-content/uploads/2014/08/contact-us-page-blue-background.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
</style>
<jsp:include page="inc/base.jsp"></jsp:include>
<body>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://reeshadubai.com/wp-content/uploads/2023/02/Contact-Us-Reesha-Wholesale-Food-Trading-Company-in-Dubai.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
      </div>
      <br>
    <div class="container">
      <form class="row g-3">
        <div class="col-md-6">
            <label for="inputname" class="form-label text-white">Name</label>
            <input type="text" class="form-control" id="inputname" placeholder="Enter your name..." name="" >
        </div>
        <div class="col-md-6">
            <label for="inputEmail4" class="form-label text-white">Email</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your email..." name="" >
        </div>
        <div class="col-12">
            <label for="exampleFormControlTextarea1" class="form-label text-white">Write your messagge</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="" rows="3"placeholder="write your message here"></textarea>
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary" type="submit" name="" >Submit</button>
        </div>
      </form>
    </div>

</body><jsp:include page="inc/footer.jsp"></jsp:include>
