<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Validation</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.main.ConnConstants" %>
<%
response.setContentType("text/html");
String un= request.getParameter("lgusername");
String em= request.getParameter("lgmail");
String pw= request.getParameter("lgpwd1");
try
{
		Class.forName(ConnConstants.DRIVER);
		Connection con = DriverManager.getConnection(ConnConstants.HOST,ConnConstants.USERNAME,ConnConstants.PASSWORD);
		Statement st=con.createStatement();
		String q1="select *from log";//selects all records from the database
		ResultSet rs = st.executeQuery(q1);
		boolean flag = false;
		while(rs.next()){
			if(un.equals(rs.getString(1)) && em.equals(rs.getString(2)) && pw.equals(rs.getString(3))){
				flag=true;
			}
			}
		
if(flag)
	out.print("Welcome,"+un);
else
{
	out.print("Wrong username or password!<br/>");
	out.print("<a href='login.jsp'>Go Back</a>");
	}
}
catch(Exception e){
	out.print("Database Error!");
}
%>
</body>
</html>