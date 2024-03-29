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
<style>
.table{
        border:3px;
}

.table tr th{
        color:solid black;
        text-align:center;
        font-size:15px;
        padding:4px 3px;
        text-decoration:none;
}

.table tr td{
        color:solid black;
        text-align:center;
        font-size:13px;
}

.heading{
        text-align:center;
        color:black;
}

.btn a{
        text-decoration:none;
        color:white;
}

.scrollable-div {
  overflow-y: scroll; 
  max-height: 500px;
}

.scrollable-div thead {
  position: sticky; 
  top: 0; 
  z-index: 1;
}

.scrollable-div tbody {
  
}
</style>
</head>

<body>

<jsp:include page="inc/admin_navbar.jsp"></jsp:include>
<div class="container-fluid">
    <div class="heading"><h1>USER'S MESSAGES </h1></div>

    <div class="scrollable-div">
    <table class="table table-striped" id="messageTable">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">SL. NO.</th>
                    <th scope="col">NAME</th>
                    <th scope="col">EMAIL ID</th>
                    <th colspan="2" scope="col">ADMIN ACTIONS</th>
                </tr>
            </thead>
            <tbody class="scroll">
            
            <%
            @SuppressWarnings({"unchecked", "rawtypes"})
            ArrayList<HashMap> contacts = (ArrayList<HashMap>)request.getAttribute("contact");
            
            for(int i=0;i<contacts.size();i++) {
            %>
                <tr>
                    <td><b><% out.print(i+1); %></b></td>
                    <td><% out.print(contacts.get(i).get("name")); %></td>
                    <td><% out.print(contacts.get(i).get("email")); %></td>
                    <td>
                    <form action="view_message" method="post">
                    <input type="hidden" name="mid" value="<% out.print(contacts.get(i).get("mid")); %>">
                    <button type="submit" class="btn btn-info">View</button>
                    </form>
                    </td>
                    <td>
                    <form action="delete_message" method="post">
                    <input type="hidden" name="mid" value="<% out.print(contacts.get(i).get("mid")); %>">
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

</html>

<% 
}
else {
%>

<jsp:include page="inc/errorpage.jsp"></jsp:include>

<% } %>