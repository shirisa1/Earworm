package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(value ="/servlet3")
public class Register extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		HttpSession session=req.getSession(false);  
	    String name=(String)session.getAttribute("username");
//	    out.print("<h1>Hi, "+name.toUpperCase() + ", <br>Welcome to your profile!</h1><br>");

	    String firstName = req.getParameter("firstname");
		String lastName= req.getParameter("lastname");
		String passWord = req.getParameter("password");
		String userName= req.getParameter("username");
		String age=req.getParameter("age");
		String gender=req.getParameter("gender");
		
		//------------
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@oracle.cccswnvlzm9u.us-east-2.rds.amazonaws.com:1521:orcl","admin","12345678");
			connection.setAutoCommit(false);
			String sql = "insert into adminlogin values (?,?)";
			System.out.println("connection established");
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, userName);
			statement.setString(2, passWord);
			statement.executeQuery();
			
			connection.commit();
			connection.close();
			System.out.println("ready to login");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		//------------
		
		resp.sendRedirect("login.jsp");
//		out.println("You are all set! "+firstName+ "please log in"+" <br>");
		
	        
		
	}	
}
