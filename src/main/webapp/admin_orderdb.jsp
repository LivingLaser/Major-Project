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
<title>Insert title here</title>

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
  max-height: px; 
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
    <span class="d-flex"><button onclick="printTable()" class="btn btn-secondary btn-lg">Print Page</button></span>
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
            	<input type="hidden" name="oid" value="<% out.print(orders.get(i).get("oid")); %>">
            	<button type="submit" class="btn btn-info">View</button>
            	</form>
            </td>
            <td>
            	<form action="delete_order" method="post">
            	<input type="hidden" name="oid" value="<% out.print(orders.get(i).get("oid")); %>">
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
            printWindow.document.write('<h1 class=>Products</h1>');
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