<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String email= request.getParameter("email");
String phone=request.getParameter("phone");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	PreparedStatement ps=con.prepareStatement("insert into info values(?,?,?,?)");
	ps.setString(1,username);
	ps.setString(2,password);
	ps.setString(3,email);
	ps.setString(4,phone);	
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("index.html");
	}
	con.close();
}
catch(Exception e){
	out.print("not");
}
%>