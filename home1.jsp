<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Store User Details</title>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.main.ConnConstants" %>
<%@ page import= "java.sql.PreparedStatement" %>


<% String un= request.getParameter("username");
   String pw= request.getParameter("pwd1");
   String num= request.getParameter("phone");
  
try{
	
	Class.forName(ConnConstants.DRIVER);
	Connection con = DriverManager.getConnection(ConnConstants.HOST,ConnConstants.USERNAME,ConnConstants.PASSWORD);
	PreparedStatement ps=con.prepareStatement("INSERT INTO log values(?,?,?)");
	ps.setString(1, un);
	ps.setString(2, pw);
	ps.setString(5, num);
	
	Statement st=con.createStatement();
	String q1="select *from user";//selects all records from the database
	ResultSet rs = st.executeQuery(q1);
	boolean flag = false;
	while(rs.next()){
		if(un.equals(rs.getString(1)) && pw.equals(rs.getString(2)) && num.equals(rs.getString(5)) ){
			
			flag=true;
		}
		}
	if(flag){
	int result=ps.executeUpdate();//updates the database with values
	if(result>=1){
		
		out.print("This user is already registered<br />");
		out.print("<a href='login.jsp'> Click here to login</a>");
	}
	}
	else if(flag==false){
		out.print("Successfully Registered.<br />");
		out.print("<a href='login.jsp'> Click here to login</a>");
	}
}
catch(Exception e)
{
	out.print("Database Error!");
	
}
%>

</body>
</html>