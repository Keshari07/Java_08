<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("pass");
if(name.equals("Aniket")&&password.equals("aniket"))
{
	response.sendRedirect("owner.jsp");
}
	else{
		out.print("invalid username and password");
	}

%>