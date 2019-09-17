package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(value="/shop")
public class Shopper extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		HttpSession session=req.getSession(false);  
	    String name=(String)session.getAttribute("username");
	    out.print("<h1>Hi, "+name.toUpperCase() + ", <br>These are your orders</h1><br>");
	    
	    RequestDispatcher rd = req.getRequestDispatcher("shop");
		String[] items = req.getParameterValues("items");
//		System.out.print(items);
		List list = Arrays.asList(items);
		System.out.println(list);
		session.setAttribute("items", list);
		
		out.print(list);
//		rd.forward(req, resp);
		
		out.print("<br><a href='logoutServlet'>logout</a>");
		
		
		
		

	}

}
