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
//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBconnection;
@WebServlet(value ="/login")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String nameString = req.getParameter("name");
		String password = req.getParameter("password");
		/*
		 Cookie ck =new Cookie("name",nameString);//creating cookie object  
		    resp.addCookie(ck);//adding cookie in the response
		 */
		  HttpSession session=req.getSession();  
	      session.setAttribute("username",nameString);     
		    
		//from database
		String UserNameString = null;
		String UserPasswordString = null;
		RequestDispatcher requestDispatcher;
		
		try {
			ResultSet resultSet=null;
			Connection connection = DBconnection.getConnection();
			connection.setAutoCommit(false);
			String sql = "select * from adminlogin where name = '"+nameString+"' and password = '"+password+"'";
			PreparedStatement statement = connection.prepareStatement(sql);
			
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				UserNameString = resultSet.getString("name");
				UserPasswordString= resultSet.getString("password");	
			}
			if (resultSet!=null) {
				resultSet.close();
			}
			if (nameString.equals("admin") && password.equals("admin")){
				out.print("welcome to admin page");
				RequestDispatcher rd = req.getRequestDispatcher("/adminIsGreat.jsp");
				  rd.forward(req, resp);
				
			}else if (nameString.equals(UserNameString) && password.equals(UserPasswordString)){
				requestDispatcher = req.getRequestDispatcher("/albums-store.jsp");
				requestDispatcher.forward(req, resp);
			}else {
				requestDispatcher = req.getRequestDispatcher("/index.jsp");
				requestDispatcher.include(req, resp);
				out.print("Sorry,Invalid Username/Password");
				
			}
			
			connection.commit();
			connection.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		

	}
	

	}

