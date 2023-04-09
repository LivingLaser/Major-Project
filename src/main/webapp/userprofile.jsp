<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/userprofile.css">
<title>My profile</title> 
</head>
<jsp:include page="inc/base.jsp"></jsp:include>
<body><br>
    <div class="container">
        <div class="row mt-7">
          <div class="col-md-6 offset-md-3">
            <div class="card">
              <div class="card-header text-center">
                <h2>View Profile</h2>
              </div>
              <div class="card-body">
              <%
              @SuppressWarnings("unchecked")
              HashMap<String, String> views = (HashMap<String, String>)request.getAttribute("view");
              %>
                <h4 class="card-title">Name</h4>
                <p class="card-text"><% out.print(views.get("name")); %></p>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item"><strong>Email:</strong> <% out.print(views.get("email")); %></li>
                  <li class="list-group-item"><strong>Phone:</strong> <% out.print(views.get("phone")); %></li>
                  <li class="list-group-item"><strong>Address:</strong> <% out.print(views.get("address")); %></li>
                  <li class="list-group-item"><strong>Ciy:</strong> <% out.print(views.get("city")); %></li>
                  <li class="list-group-item"><strong>Pin Code:</strong> <% out.print(views.get("pincode")); %></li><br>
                  <li class="list-group-item"><div class="d-grid gap-2 col-6 mx-auto">
                    <form action="update_profile" method="post">
                    <input type="hidden" name="id" value="<% out.print(views.get("id")); %>">
                    <button type="submit" class="btn btn-info">UPDATE PROFILE</button>
                    </form>
                </div></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>

<jsp:include page="inc/footer.jsp"></jsp:include>
</html>