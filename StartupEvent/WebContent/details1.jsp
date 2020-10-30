<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.check.Constants" %>
<table width="100%" border="1px" >

<tr>
	    <th>Username</th>
		<th>EmailID</th>
		<th>Password</th>
		<th>ConfirmPassword</th>
		<th>ContactNumber</th>
		<th>College</th>
		<th>Department</th>
</tr>

<%
		try
		{
			Class.forName(Constants.DRIVER);   //
			Connection con = DriverManager.getConnection(Constants.HOST,Constants.USERNAME,Constants.PASSWORD);
			Statement st = con.createStatement();
			String q1 = "select * from log";
			ResultSet rs = st.executeQuery(q1);
			while(rs.next())
			{
			///out.println(rs.getString(1));//
			
		%>
<tr>
			<td>	<%= rs.getString(1)%></td>
			<td>	<%= rs.getString(2)%></td>
			<td>	<%= rs.getString(3)%></td>
			<td>	<%= rs.getString(4)%></td>
			<td>	<%= rs.getString(5)%></td>
			<td>	<%= rs.getString(6)%></td>
			<td>	<%= rs.getString(7)%></td>
</tr>				
		<% 
			}
		}
		catch(Exception e)
		{
			out.print(e);
		}
		%>

</table>


</body>
</html>