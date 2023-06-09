<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("loggedAdmin") != null && (boolean)session.getAttribute("loggedAdmin")) {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

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
        color:red;
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
<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1"><b style="font-size: 30px">ORDER LIST</b></span>
    <span class="d-flex"><button onclick="printTable()" class="btn btn-secondary btn-lg">Print Order List</button></span>
  </div>
</nav>
 <div class="scrollable-div">  
     <table class="table table-striped table-dark" id="messageTable">
        <thead>
          <tr>
            <th>Customer Name</th>
            <th>Customer Email</th>
            <th colspan="2" scope="col">Date &amp; Time</th>
            <th colspan="2" scope="col">Admin Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
        @SuppressWarnings({"unchecked", "rawtypes"})
        ArrayList<HashMap> orders = (ArrayList<HashMap>)request.getAttribute("order");
        
        for(int i=0;i<orders.size();i++) {
        %>
          <tr>
            <td><% out.print(orders.get(i).get("name")); %></td>
            <td><% out.print(orders.get(i).get("email")); %></td>
            <td><% out.print(orders.get(i).get("date")); %></td>
            <td><% out.print(orders.get(i).get("time")); %></td>
            <td>
            	<form action="view_order" method="post">
            	<input type="hidden" name="date" value="<% out.print(orders.get(i).get("date")); %>">
            	<input type="hidden" name="time" value="<% out.print(orders.get(i).get("time")); %>">
            	<button type="submit" class="btn btn-info">View</button>
            	</form>
            </td>
            <td>
            	<form action="delete_order" method="post">
            	<input type="hidden" name="uid" value="<% out.print(orders.get(i).get("uid")); %>">
            	<input type="hidden" name="pid" value="<% out.print(orders.get(i).get("pid")); %>">
            	<input type="hidden" name="date" value="<% out.print(orders.get(i).get("date")); %>">
            	<input type="hidden" name="time" value="<% out.print(orders.get(i).get("time")); %>">
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
        printWindow.document.write('<h1 class="table-heading">Orders</h1>');
        printWindow.document.write('<table style="border-collapse: collapse; border: 2px solid black; width: 100%;">');
        
        
        var messageTable = document.getElementById('messageTable');
        var rows = messageTable.getElementsByTagName('tr');
        
    
        for (var i = 0; i < rows.length; i++) {
            printWindow.document.write('<tr>');
            
           
            var columns = rows[i].getElementsByTagName('td');
            
           
            for (var j = 0; j < columns.length; j++) {
                printWindow.document.write('<td style="border: 1px solid black; padding: 5px;">' + columns[j].innerHTML + '</td>');
            }
            
            printWindow.document.write('</tr>');
        }
        
        printWindow.document.write('</table>');
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