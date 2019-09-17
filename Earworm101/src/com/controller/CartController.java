package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/addToCart")
public class CartController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	RequestDispatcher requestDispatcher;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();


		HttpSession session = req.getSession(false);
		String name = (String) session.getAttribute("username");
		
		requestDispatcher = req.getRequestDispatcher("/cart.jsp");
		requestDispatcher.include(req, resp);
	}

}
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.dao.ProductImp;
//import com.model.Cart;
//import com.model.Product;
//
///**
// * Servlet implementation class CartController
// */
//@WebServlet("/Cart")
//public class CartController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	private ProductImp dao;
//	
//	public CartController() {   
//		super();
//		// TODO Auto-generated constructor stub
//	}
//
//	@Override
//	public void init() throws ServletException {
//		dao = new ProductImp();
//	}
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher view = request.getRequestDispatcher("cart.jsp");
//		view.forward(request, response);
//	}
//
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//		Cart cart = (Cart) session.getAttribute("cart");
//
//		int productId = Integer.parseInt(request.getParameter("productId"));
//		Product product = dao.getProductById(productId);
//		cart.removeProduct(product); // add to product Cart
//		session.setAttribute("cart", cart);
//		
//		RequestDispatcher view = request.getRequestDispatcher("cart.jsp");
//		view.forward(request, response);
//	}
//
//}
