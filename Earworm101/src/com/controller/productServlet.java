package com.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value="/productDisplay")
public class productServlet extends HttpServlet{
	
	RequestDispatcher requestDispatcher;
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		

		HttpSession session = req.getSession(false);
		String name = (String) session.getAttribute("username");
		resp.sendRedirect("productDisplay.jsp");

	}

}
