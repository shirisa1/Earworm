package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/AddressController")
public class BillingShippingController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		HttpSession session = req.getSession(false);
		String name = (String) session.getAttribute("username");
		List<String> items=  (List<String>) session.getAttribute("product");
		Double price = (Double) session.getAttribute("price");
		
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Invoice.jsp");
		requestDispatcher.include(req, resp);
	}
	

}
