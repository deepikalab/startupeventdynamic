package com.check;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.check.Constants;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.check.Constants;


/**
 * Servlet implementation class CheckProcess
 */
@WebServlet("/CheckProcess")
public class CheckProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();
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
			ResultSet rs = st.executeQuery(q1);
			boolean flag = false;
			while(rs.next()){
				if(em.equals(rs.getString(2))){
					flag=true;
				}
				}
			
		if(flag){
		
		System.out.println("This Email ID already exists");
		writer.println("<html><head>");
		writer.println("<script language=\"Javascript\">");
		writer.println("alert('This Email ID is already registered');");
		writer.println("</script></head>");
		writer.println("<body><h3>This Email ID is already registered</h3><br>");
		writer.println("<a href='login.jsp'>Click here to login</a></body></html>");
	
		//response.sendRedirect("login.jsp");
	//	System.out.print("<a href='login.jsp'>Click here to login</a>");
		//No single quotes Only double quotes for response
		}
		else
		{
		int res=ps.executeUpdate();//updates the database with values
		   if(res>0){
		writer.println("<html><head>");
		writer.println("<script language=\"Javascript\">");
		writer.println("alert('Registered Successfully');");
		writer.println("</script></head>");
		writer.println("<body><h3>Registered Successfully</h3><br>");
		writer.println("You can login now...<br>");
		writer.println("<br>");
		writer.println("<a href='login.jsp'>Click here to login</a></body></html>");
	
		System.out.println("Registered Successfully");
		
		      }
		}
		}
		catch(Exception e){
		System.out.print("Database Error!");
		}
		doGet(request, response);
	}

}
