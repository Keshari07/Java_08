<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#head{
width:100%;
height:100px;
background-color:black;
}


ul li{
list-style:none;
                 float:left;
                 width:20%;
                 height:50px;
                 line-height: 50px;
                 text-align: center;
}
#content{
backgronund-color:black;
}
</style>
</head>
<body>
<div id="head">
<div id="content">
<ul>
<li><a href="records.jsp">records of login</a></li>
<li><a href="approval.jsp">records of searches</a>
<li><a href="index.html">logout</a></li>
<li><a href="response.jsp">response</a></li>
</ul>
</div>
</div>


</body>
</html>