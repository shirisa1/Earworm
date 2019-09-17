package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Welcome extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		HttpSession session = req.getSession(false);
		String name = (String) session.getAttribute("username");
		out.print("<h1>Hello, " + name.toUpperCase() + "!</h1>");
		out.print("<br>");
		out.print("<a href='shop.jsp'>Start Shopping</a>");
		out.print("<jsp:include page=\"page_footer.jsp\" />");

	}
}
