<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (Boolean)session.getAttribute("loggedAdmin")) {
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/admin_userdb.css" rel="stylesheet">
</head>
<body>

<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
    <p class="text-center h2">USER'S DATA</p>

<div class="container-fluid">
    <table class="table table-dark">
        <thead>
          <tr>
            <th scope="col">SL. NO.</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone No</th>
            <th colspan="3" scope="col">ADMIN ACTIONS</th>
          </tr>
        </thead>
        <tbody>
        <%
        @SuppressWarnings({"unchecked", "rawtypes"})
        ArrayList<HashMap> users = (ArrayList<HashMap>)request.getAttribute("user");
        
        for(int i=0;i<users.size();i++) {
        %>
          <tr>
            <th scope="row"><% out.print(i+1); %></th>
            <td><% out.print(users.get(i).get("name")); %></td>
            <td><% out.print(users.get(i).get("email")); %></td>
            <td><% out.print(users.get(i).get("phone")); %></td>
            <td>
            <form action="view_user" method="post">
            <input type="hidden" name="uid" value="<% out.print(users.get(i).get("uid")); %>">
            <button type="submit" class="btn btn-primary">View</button>
            </form>
            </td>
            <td>
            <form action="update_user" method="post">
            <input type="hidden" name="uid" value="<% out.print(users.get(i).get("uid")); %>">
            <button type="submit" class="btn btn-warning">Edit</button>
            </form>
            </td>
            <td>
            <form action="delete_user" method="post">
            <input type="hidden" name="uid" value="<% out.print(users.get(i).get("uid")); %>">
            <button onclick="return confirm('Are you sure ?')" type="submit" class="btn btn-danger">Delete</button>
            </form>
            </td>
          </tr>
        <% } %>
        </tbody>
      </table>
</div>
</body>
</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>