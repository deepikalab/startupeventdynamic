<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>User Validation</title>
<style>
/* Add a black background color to the top navigation */
body{
background-image:url('https://avante.biz/wp-content/uploads/Honeycomb-Desktop-Wallpapers/Honeycomb-Desktop-Wallpapers-008.jpg');
background-repeat: no repeat;
background-size: cover;
color:White;
}
.button2{

width:100px;
height:30px;
padding:5px;
tex-align:center;
color:black;
cursor:pointer;

}
.topnav {
  background-color: #333;
  overflow: hidden;
}
.right{
float:right;
}
/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add an active class to highlight the current page */
.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

/* Hide the link that should open and close the topnav on small screens */
.topnav .icon {
  display: none;
}
/* When the screen is less than 600 pixels wide, hide all links, except for the first one ("Home"). Show the link that contains should open and close the topnav (.icon) */
@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

/* The "responsive" class is added to the topnav with JavaScript when the user clicks on the icon. This class makes the topnav look good on small screens (display the links vertically instead of horizontally) */
@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive a.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
</head>

<%@page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.check.Constants" %>
<%
response.setContentType("text/html");
String un = (String) request.getSession().getAttribute("un");
%>
	<!-- out.print("<h3>Welcome, "+un+" !</h3>"); -->
	<div class="topnav" id="myTopnav">
<a href="https://deepikalab.github.io/mrstartup/" class="active">Home</a>
<a href="#news">News</a>
<a href="#contact">Contact</a>
<a href="#about">About</a>
<a href="javascript:void(0);" class="icon" onclick= "myFunction()">
  <i class="fa fa-bars"></i>
</a>
<% out.print("<p style='float:right;color:white;padding-right:20px'>Welcome, "+un+" !</p>"); %>
</div>
<h3>You are now authorized to view our Database</h3>
<p>Click below</p>
<a href="details1.jsp"><button class="button2">View Details</button></a>
</body>
</html>