<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <title>contact us</title>
<style>
    body {
      background-image: url('https://img.pikbest.com/backgrounds/20191028/abstract-white-background-can-be-used-in-cover-design--book-design--website-background-v_1582398jpg!bwr800');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
</style>
<jsp:include page="inc/base.jsp"></jsp:include>
<body>
<jsp:include page="inc/contactheading.jsp"></jsp:include>
      <br>
    <div class="container">
      <form class="row g-3">
        <div class="col-md-6">
            <label for="inputname" class="form-label text-dark"><b>Name</b></label>
            <input type="text" class="form-control" id="inputname" placeholder="Enter your name..." required name="" >
        </div>
        <div class="col-md-6">
            <label for="inputEmail4" class="form-label text-dark"><b>Email</b></label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Enter your email..." required name="" >
        </div>
        <div class="col-12">
            <label for="exampleFormControlTextarea1" class="form-label text-dark"><b>Write your message</b></label>
            <textarea class="form-control" id="exampleFormControlTextarea1" required name="" rows="3"placeholder="write your message here"></textarea>
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary" type="submit" name="" >Submit</button>
        </div>
      </form>
    </div>

</body><jsp:include page="inc/footer.jsp"></jsp:include>
