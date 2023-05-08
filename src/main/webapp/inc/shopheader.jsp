<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
    #headerofshop{
			float: left;
		}
    #headerofshop ul li a:hover{
      color: white;
	    font-size: 17px;
    	text-decoration: none;
	    font-weight: bold;
      transition: 0.4s;
    }

</style>
<body>
    <nav class="navbar navbar-expand-lg navbar- bg-transparent">
        <div class="container">

          <div class="col-md-12">
            <!-- catagory1 -->
            <div id="headerofshop" class="col-md-4 d-flex justify-content-center">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                      <form action="shop1" method="post">
                      <button type="submit" class="nav-link text-dark btn btn-outline-secondary">Fruits &amp; Vegitables</button>
                      </form>
                    </li>
                </ul>
            </div>
              <!-- catagory2 -->
            <div id="headerofshop" class="col-md-4 d-flex justify-content-center">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <form action="shop2" method="post">
                      <button type="submit" class="nav-link text-dark btn btn-outline-secondary">Foodgrains &amp; Masalas</button>
                      </form>
                    </li>
                </ul>
            </div>
              <!-- catagory3 -->
            <div id="headerofshop" class="col-md-4 d-flex justify-content-center">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <form action="shop3" method="post">
                      <button type="submit" class="nav-link text-dark btn btn-outline-secondary">Eggs, Meats &amp; Fish</button>
                      </form>
                    </li>
                </ul>
            </div>
          </div>

        </div>
      </nav><br>
      