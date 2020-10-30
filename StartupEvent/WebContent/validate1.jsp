<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate1</title>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.check.Constants" %>
<%@ page import="java.sql.PreparedStatement" %>


<%
String un= request.getParameter("username");
String em= request.getParameter("mail");
String pw1= request.getParameter("pwd1");
String pw2= request.getParameter("pwd2");
String ph= request.getParameter("phone");
String col= request.getParameter("colg");
String dpt= request.getParameter("department");
try{
	
	Class.forName(Constants.DRIVER);
	Connection con = DriverManager.getConnection(Constants.HOST,Constants.USERNAME,Constants.PASSWORD);
	PreparedStatement ps=con.prepareStatement("INSERT INTO log values(?,?,?,?,?,?,?)");
	ps.setString(1, un);
	ps.setString(2, em);
	ps.setString(3, pw1);
	ps.setString(4, pw2);
	ps.setString(5, ph);
	ps.setString(6, col);
	ps.setString(7, dpt);
	Statement st=con.createStatement();
	String q1="select * from log";//selects all records from the database
	ResultSet rs = st.executeQuery(q1);//for statement there parameter must be passes
	boolean flag = false;
	while(rs.next()){
		if(em.equals(rs.getString(2))){
			flag=true;
		}
		}
	
if(flag){
out.print("This Email ID already exists<br>");
out.print("<a href='login.jsp'>Click here to login</a>");
}
else
{
int result=ps.executeUpdate();//for prepared statement there is no parameter updates the database with values
out.print("Registered Successfully<br>");
}
}
catch(Exception e){
out.print("Database Error!");
}
%>

</body>
</html>