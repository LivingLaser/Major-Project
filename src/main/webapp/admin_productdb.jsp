<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link rel="stylesheet" href ="css/admin_productdb.css">
</head>
<style>
.scrollable-div {
  overflow-y: scroll; 
  max-height: 520px; 
}

.scrollable-div thead {
   position: sticky; 
  top: 0; 
  z-index: 1; 

}

.scrollable-div tbody {
 
}
#linkbtn {
  background: none;
  border: none;
  padding: 0;
  font: inherit;
  color: white;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
}
</style>
<body>
<jsp:include page="inc/admin_navbar.jsp"></jsp:include>

<nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
  <div class="container-fluid">
    <a class="navbar-brand mx-auto text-dark" style="font-size: 30px"><b>PRODUCT LIST</b></a>

    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link me-2 btn btn-secondary btn-lg" href="admin_addproduct.jsp">ADD NEW PRODUCT</a>
        </li>
        <li class="nav-item">
          <button onclick="printTable()" class="btn btn-secondary btn-lg">PRINT PRODUCT LIST</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
 <div class="container-fluid">
<div class="scrollable-div">
    <table class="table table-striped table-dark" id="messageTable">
            <thead>
                <tr>
                    <th scope="col">SL. NO.</th>
                    <th scope="col">NAME</th>
                    <th scope="col">QUANTITY</th>
                    <th scope="col">STOCK (units)</th>
                    <th scope="col">
                      <button class="btn btn-primary" id="linkbtn" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Availability</button>
                       <div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
                         <div class="offcanvas-header">
                              <h5 id="offcanvasTopLabel text-dark"></h5>
                           <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                         </div>
                         <div class="offcanvas-body h3">
                               <ul>
                                  <li class="text-success">Green = Products Available</li>
                                  <li class="text-warning"> Yellow = Limited Products Left</li>
                                  <li class="text-danger">RED = Out Of Stock</li>
                              </ul>
                          </div>
                        </div>         
                    </th>
                    <th colspan="3" scope="col">ADMIN ACTIONS</th>
                </tr>
            </thead>
            <tbody>
            <%
            @SuppressWarnings({"unchecked", "rawtypes"})
            ArrayList<HashMap> products = (ArrayList<HashMap>)request.getAttribute("product");
            
            for(int i=0;i<products.size();i++) {
            %>
                <tr>
                    <td><b><% out.print(i+1); %></b></td>
                    <td><% out.print(products.get(i).get("name")); %></td>
                    <td><% out.print(products.get(i).get("quantity")); %></td>
                    <td><% out.print(products.get(i).get("stock")); %></td>
                    <td><div class="col-md-4 py-2 mt-2 mx-auto bg-<% out.print(products.get(i).get("color")); %>"></div></td>
                    <td>
                    <form action="view_product" method="post">
                    <input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
                    <button type="submit" class="btn btn-info">View</button>
                    </form>
                    </td>
                    <td>
                    <form action="update_product" method="post">
                    <input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
                    <button type="submit" class="btn btn-warning">Update</button>
                    </form>
                    </td>
                    <td>
                    <form action="delete_product" method="post">
                    <input type="hidden" name="pid" value="<% out.print(products.get(i).get("pid")); %>">
                    <button onclick="return confirm('Are you sure ?')" type="submit" class="btn btn-danger">Delete</button>
                    </form>
                    </td>
                </tr>   
            <% } %>
            </tbody>
        </table>
</div> 
</div>
</body>
    <script>
        function printTable() {
            var printWindow = window.open('', '', 'width=800,height=600');
            printWindow.document.write('<html><head><title>Print</title></head><body>');
            printWindow.document.write('<h1>Products</h1>');
            printWindow.document.write(document.getElementById('messageTable').outerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }
    </script>

</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>