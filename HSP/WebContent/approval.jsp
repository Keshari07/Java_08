<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>booked status</title>
</head>
<body>
<div class="container">
<h2>RECORDS OF HOUSES BOOKED</h2>
<table class="tabel table-bordered table-striped">
<thead>
<tr>
<th>NAME</th>
<th>MEMBERS</th>
<th>BHK</th>
<th>FLOOR</th>
<th>STATUS</th>
</tr>
</thead>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from search1");
while(rs.next()){
%>
<tbody>
<tr>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("members") %></td>
<td><%=rs.getString("bhk") %></td>
<td><%=rs.getString("floor") %></td>
<td><input type="button" onclick="approve()" value="approve">//<input type="button" onclick="reject()" value="reject"> </td>
</tr>
</tbody>
<%
}
con.close();
}
catch(Exception e){
}
%>
</table>
</div>


</body>
</html>