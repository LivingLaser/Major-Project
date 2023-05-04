<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedIn") != null && (boolean)session.getAttribute("loggedIn")) {
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/userprofile.css">
<title>My profile</title> 
</head>
<body>
    <jsp:include page="inc/base.jsp"></jsp:include>
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-12 col-md-3 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title d-flex justify-content-center">Your Profile</h4>
                        <div class="d-flex justify-content-center">
                        <img class="img-fluid" src="https://s3.theasianparent.com/cdn-cgi/image/width=150,height=150,fit=crop,quality=90/parenttown-prod/social_16039851973099.jpg" alt="Profile Picture">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-sm-11 col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Profile Information</h4>
                            <%
                            @SuppressWarnings("unchecked")
                            HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
                            %>
                            <div class="form-group">
                                <label for="username">Full Name</label>
                                <input type="text" class="form-control" id="username" value="<% out.print(views.get("name")); %>" disabled>
                            </div>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" value="<% out.print(views.get("email")); %>" disabled>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="tel" class="form-control" id="phone" value="<% out.print(views.get("phone")); %>" disabled>
                            </div>
                            <div class="form-group">
                                <label for="fullname">Address</label>
                                <input type="text" class="form-control" id="fullname" value="<% out.print(views.get("address")); %>" disabled>
                            </div>
                            <div class="form-group">
                                <label for="fullname">City</label>
                                <input type="text" class="form-control" id="fullname" value="<% out.print(views.get("city")); %>" disabled>
                            </div>
                            <div class="form-group">
                                <label for="fullname">Area Pin-Code</label>
                                <input type="text" class="form-control" id="fullname" value="<% out.print(views.get("pincode")); %>" disabled>
                            </div>
                            <br><div class="d-flex justify-content-center">
                                <form action="update_profile" method="post">
                                <input type="hidden" name="uid" value="<% out.print(views.get("uid")); %>">
                                <button type="submit" class="btn btn-dark">UPDATE PROFILE</button>
                                </form>
                                </div>

                    </div>
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