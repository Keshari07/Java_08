<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>response page</title>
<style>
#header{
width:100%;
height:100px;
background-color:silver;
}
#content{
text-align:right;
}
h2{
text-align:center;
padding-top:10px;
}
ul li{
list-style:none;
                 float:left;
                 width:20%;
                 height:50px;
                 line-height: 50px;
                 text-align: center;
}
</style>

</head>
<body>
<div id="header">
<div id="heading">
<h2>WELCOME TO DREAM HOUSE</h2>
</div>
<div>
<ul>
<li><a data-toggle="modal" data-target="#search">ADD HOUSE</a>
<li><a href="searched.jsp">SEARCHED HOUSE</a></li>
<li><a href="index.html">LOGOUT</a>
</ul>
</div>
</div>
<!--------------------------------------------------------------------MODAL REGISTER------------------------------------------------------------------------------------------ -->
  <!-- Modal -->
  <div class="modal fade" id="search" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">fill requirements.......</h4>
        </div>
        <div class="modal-body">
        <form action="search.jsp">
        
    <label>NAME</label><input type="text" class="form-control" name="name" placeholder="Enter name">
  
    <label>MEMBERS</label><input type="number" class="form-control" name="members" placeholder="no. of people">
    <label>BHK</label><select class="form-control" name="bhk">
                      <option>1 BHK</option>
                      <option>2 BHK</option>
                      <option>3 BHK</option>
                      <option>4 BHK</option>
                      </select>
     <label>FLOOR</label><select class="form-control" name="floor">
                      <option>1st floor</option>
                      <option>2nd floor</option>
                      <option>3rd floor</option>
                      <option>4th floor</option>
                      </select>
                   
  
          <input type="submit" value="submit" name="POP">
        </form>
        </div>
      </div>
      
    </div>
  </div>


</body>
</html>
