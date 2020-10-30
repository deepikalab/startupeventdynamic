<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Validation</title>
<style>
body{
font-family:Verdana;
background-image:url('https://avante.biz/wp-content/uploads/Honeycomb-Desktop-Wallpapers/Honeycomb-Desktop-Wallpapers-008.jpg');
background-size:cover;
}</style>
</head>
<body >
<%@page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.check.Constants" %>

<%
response.setContentType("text/html");
String un= request.getParameter("lg1");
String em= request.getParameter("lg2");
String pw= request.getParameter("lg3");
try
{
		Class.forName(Constants.DRIVER);
		Connection con = DriverManager.getConnection(Constants.HOST,Constants.USERNAME,Constants.PASSWORD);
		Statement st=con.createStatement();
		String q1="select * from log";//selects all records from the database
		ResultSet rs = st.executeQuery(q1);
		boolean flag = false;
		while(rs.next()){
			if(un.equals(rs.getString(1)) && em.equals(rs.getString(2)) && pw.equals(rs.getString(3))){
				flag=true;
			}
			}
		
if(flag){
	request.getSession().setAttribute("un", un);
    response.sendRedirect("checkhtml.jsp");
 
}
else
{	out.print("<script type=\"text/javascript\">");
   out.print("alert('Wrong Username or Password,Try again');");    
   out.print("window.location='login.jsp';");
    out.print("</script>");
	out.print("<p style='color:white'> Wrong username or password!</p><br/>");
	out.print("<a style='color:white' href='login.jsp'>Go Back</a>");
	}
}
catch(Exception e){
	out.print("Database Error!");
}

%>
</body>
</html>