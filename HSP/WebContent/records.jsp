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
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h2>RECORDS OF CLIENT</h2>
<table class="tabel table-bordered table-striped">
<thead>
<tr>
<th>USERNAME</th>
<th>PASSWORD</th>
<th>EMAIL</th>
<th>PHONE</th>
</tr>
</thead>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from info");
while(rs.next()){
%>
<tbody>
<tr>
<td><%=rs.getString("username")%></td>
<td><%=rs.getString("password") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phone") %></td>
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