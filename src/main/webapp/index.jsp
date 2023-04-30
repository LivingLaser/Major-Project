<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
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
          <h5 class="card-title">Vegetables &amp; Fruits</h5>
          <p class="card-text">Fresh and healthy vegetables.</p>
          <div class="ab text-center">
          <form action="shop1" method="post">
          <button class="btn btn-primary">Shop Now</button>
          </form>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img class="card-img-top" src="https://img.freepik.com/premium-photo/natural-super-foods-cereals-selection-bowls_788160-735.jpg?w=360" alt="Fruits">
        <div class="card-body">
          <h5 class="card-title">Foodgrains &amp; Masalas</h5>
          <p class="card-text">Enjoy all type of masalas and ingredients.</p>
          <div class="ab text-center">
          <form action="shop2" method="post">
          <button class="btn btn-primary">Shop Now</button>
          </form>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img class="card-img-top" src="https://www.licious.in/blog/wp-content/uploads/2022/12/Shutterstock_1503436736-360x240.jpg" alt="Bakery">
        <div class="card-body">
          <h5 class="card-title">Eggs, Meats &amp; Fish</h5>
          <p class="card-text">Fresh Meat and eggs at Discount</p>
          <div class="ab text-center">
          <form action="shop3" method="post">
          <button class="btn btn-primary">Shop Now</button>
          </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- popular product ekhan theke -->
<div class="container"><hr><br>
    <h2 class="text-center mb-5">Our Popular Products</h2>
    <div class="row">
    <%
    @SuppressWarnings("rawtypes")
	ArrayList<HashMap> products = new ArrayList<>();
    String uid = (String)session.getAttribute("uid");
    
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
    	
    	try {
    		String sql = "select * from product order by rand() limit 4";
    		PreparedStatement pstm = con.prepareStatement(sql);
    		ResultSet rs = pstm.executeQuery();
    		
    		while(rs.next()) {
    			HashMap<String, String> product = new HashMap<>();
    			
    			product.put("pid", rs.getString("pid"));
    			product.put("name", rs.getString("name"));
    			product.put("description", rs.getString("description"));
    			product.put("quantity", rs.getString("quantity"));
    			product.put("price", rs.getString("price"));
    			product.put("image", rs.getString("image"));
    			
    			products.add(product);
    		}
    	}
    	finally {
    		con.close();
    	}
    }
    catch(Exception e) {
    	System.out.println("Exception: " + e);
    }
    
    for(int i=0;i<products.size();i++) {
    %>
        
		<div class="col-sm-12 col-md-6 col-lg-3 mx-auto">
		<div class="card mb-5" style="width: 16rem;">
  		<img class="card-img-top" style="height: 160px; width: 255px;" src="img/<% out.print(products.get(i).get("image")); %>" alt="Card image cap">
  		<div class="card-body">
    		<h5 class="card-title text-center"><% out.print(products.get(i).get("name")); %></h5>
    		<p class="card-text"><% out.print(products.get(i).get("description")); %></p>
    		<p class="card-text">
    		Quantity: <% out.print(products.get(i).get("quantity")); %> &nbsp;&nbsp; 
    		Price: ₹<% out.print(products.get(i).get("price")); %>
    		</p>
 		</div>

    <div class="card-footer text-center">
    	<form action="add_cart" method="post">
    	<input type="hidden" name="uid" value="<% out.print(uid); %>">
    	<input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
    	<button type="submit" class="btn btn-warning">Add to Cart</button>
    	</form>
    </div>
    
</div>
</div>

<% } %>
    </div>
  </div>
</body>
<jsp:include page="inc/footer.jsp"></jsp:include>
</html>