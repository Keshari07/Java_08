<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String members=request.getParameter("Integer.toString(password)");
String bhk= request.getParameter("bhk");
String floor=request.getParameter("floor");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	PreparedStatement ps=con.prepareStatement("insert into search1 values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,members);
	ps.setString(3,bhk);
	ps.setString(4,floor);	
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("response.jsp");
	}
	con.close();
}
catch(Exception e){
	out.print("not");
}
%>