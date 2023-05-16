<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
%>

<!DOCTYPE html>
<html>
<head>
<!--<link rel="stylesheet" href="css/userprofile.css">  -->
<title>My profile</title> 
</head>
<body>
    <jsp:include page="inc/base.jsp"></jsp:include>
     <div class="container mt-5">
     <div class="jumbotron">
     <h1 class="display-4">MY PROFILE</h1>
                            <%
                            @SuppressWarnings("unchecked")
                            HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
                            %>
                         <table class="table">
                         <tbody>
                             <tr>
                               <th>Full Name</th>
                               <td><% out.print(views.get("name")); %></td>
                             </tr>
                             <tr>
                               <th>Email address</th>
                               <td><% out.print(views.get("email")); %></td>
                             </tr>
                             <tr>
                               <th>Phone Number</th>
                               <td><% out.print(views.get("phone")); %></td>
                             </tr>
                             <tr>
                               <th>Address</th>
                               <td><% out.print(views.get("address")); %></td>
                             </tr>
                             <tr>
                               <th>City</th>
                               <td><% out.print(views.get("city")); %></td>
                             </tr>
                             <tr>
                               <th>Area Pin-Code</th>
                               <td><% out.print(views.get("pincode")); %></td>
                             </tr>                             
                         </tbody>
                         </table>
                              <hr class="my-4">
                               <p>You can change your account information here  <i class="fa fa-hand-o-down" aria-hidden="true"></i></p>
                               <div class="row">
                               
                               <div class="col-md-1">
                                <form action="update_profile" method="post">
                                <input type="hidden" name="uid" value="<% out.print(views.get("uid")); %>">
                                <button type="submit" class="btn btn-dark mr-2">UPDATE PROFILE</button>
                                </form>
                                </div>
                               <div class="col-md-1"></div>
                               <div class="col-md-1">
                                <a href="order.jsp"><button type="button"  class="btn btn-dark ml-3">My Orders</button></a>
                               </div>
                               </div>
  </div>

                 </div>

</body><br><br><br>


<jsp:include page="inc/footer.jsp"></jsp:include>
</html>

<% 
}
else {
%>

<jsp:include page="login.jsp"></jsp:include>

<% } %>