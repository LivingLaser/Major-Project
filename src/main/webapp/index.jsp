<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>home</title>
</head>
<body>

<jsp:include page="inc/base.jsp"></jsp:include>

<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-interval="3000">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://files.sysers.com/cp/upload/omega/gallery/full/front-door-deliver-groceries-right-to-my-front-door-grocery-delivery-bay-area-food-delivery.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://thumbs.dreamstime.com/b/people-grocery-store-line-cash-desk-supermarket-customers-vector-illustration-men-women-buying-groceries-shop-176542083.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://www.stayinvermont.org/wp-content/uploads/2015/05/GROCERIES_headerA.jpg" class="d-block w-100" alt="...">
      </div>
    </div>
</div>

<!-- jumbotron -->


<!-- Featured categories section -->
<div class="container"><br>
  <h2 class="text-center mb-5">Featured Categories</h2>
  <div class="row">
    <div class="col-md-4 mb-4">
      <div class="card">
        <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFdCN1V3DgbdtT_ci9UDf0WYgUpdENufE7w&usqp=CAU" alt="Vegetables">
        <div class="card-body">
          <h5 class="card-title">Vegetables & Fruits</h5>
          <p class="card-text">Fresh and healthy vegetables.</p>
          <div class="ab text-center"><a href="#" class="btn btn-primary">Shop Now</a></div>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img class="card-img-top" src="https://img.freepik.com/premium-photo/natural-super-foods-cereals-selection-bowls_788160-735.jpg?w=360" alt="Fruits">
        <div class="card-body">
          <h5 class="card-title">Foodgrains & Masalas</h5>
          <p class="card-text">Enjoy all type of masalas and ingridients.</p>
          <div class="ab text-center"><a href="#" class="btn btn-primary">Shop Now</a></div>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img class="card-img-top" src="https://www.licious.in/blog/wp-content/uploads/2022/12/Shutterstock_1503436736-360x240.jpg" alt="Bakery">
        <div class="card-body">
          <h5 class="card-title">Eggs,Meats & Fish</h5>
          <p class="card-text">Fresh Meat and eggs at Discount</p>
          <div class="ab text-center"><a href="#" class="btn btn-primary">Shop Now</a></div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- popular product ekhan theke -->
<div class="container"><br>
    <h2 class="text-center mb-5">Our Popular Products</h2>
    <div class="row">
      <div class="col-md-3 mb-4">
        <div class="card">
          <img class="card-img-top" src="https://picsum.photos/id/400/400/300" alt="Product 1">
          <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="ab text-center"> <a href="#" class="btn btn-warning">Add to Cart</a></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-4">
        <div class="card">
          <img class="card-img-top" src="https://picsum.photos/id/401/400/300" alt="Product 2">
          <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="ab text-center"><a href="#" class="btn btn-warning">Add to Cart</a></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-4">
        <div class="card">
          <img class="card-img-top" src="https://picsum.photos/id/402/400/300" alt="Product 3">
          <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="ab text-center"><a href="#" class="btn btn-warning">Add to Cart</a></div>
          </div>
        </div>
      </div>
      <div class="col-md-3 mb-4">
        <div class="card">
          <img class="card-img-top" src="https://picsum.photos/id/403/400/300" alt="Product 4">
          <div class="card-body">
            <h5 class="card-title">Product 4</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="ab text-center"><a href="#" class="btn btn-warning">Add to Cart</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>