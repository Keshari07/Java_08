<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
int i=0;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	out.print(3);
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	out.print(1);
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from info where username='"+username+"' and password='"+password+"'");
	if(rs.next())
	{
		response.sendRedirect("response.jsp");
	}
	else{
		out.print("invalid data");
	}
}
catch(Exception e){
	out.print(5);
}
%>