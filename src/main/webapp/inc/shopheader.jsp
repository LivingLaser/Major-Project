<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
    .col-md-4{
			float: left;
		}
    .col-md-4 ul li a:hover{
      color: white;
	    font-size: 17px;
    	text-decoration: none;
	    font-weight: bold;
      transition: 0.4s;
    }

</style>
<body>
    <nav class="navbar navbar-expand-lg navbar- bg-transparent">
        <div class="container-fluid">
          <div class="col-md-2">
            <a class="navbar-brand text-dark" href="#"></a>
          </div>
          <div class="col-md-8">
            <!-- catagory1 -->
            <div class="col-md-4">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a class="nav-link text-dark" href="shop1.jsp">Fruits & Vegitables</a>
                    </li>
                </ul>
            </div>
              <!-- catagory2 -->
            <div class="col-md-4">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="shop2.jsp">Foodgrains & Masalas</a>
                    </li>
                </ul>
            </div>
              <!-- catagory3 -->
            <div class="col-md-4">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link text-dark" href="shop3.jsp">Eggs,Meats & Fish</a>
                    </li>
                </ul>
            </div>
          </div>
          <div class="col-md-2 text-end">
            <button class="btn btn-outline-warning">Button</button>
          </div>
        </div>
      </nav>
      