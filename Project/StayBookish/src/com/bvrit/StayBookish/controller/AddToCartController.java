package com.bvrit.StayBookish.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.StayBookish.dao.CartDAO;
import com.bvrit.StayBookish.dao.UserDAO;

/**
 * Servlet implementation class SignupController
 */
public class AddToCartController extends HttpServlet {
	

	
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		HttpSession session = request.getSession(true);
		String user = (String)session.getAttribute("user");
		String bid = request.getParameter("bid");
		
		//create object of UserDAO
		CartDAO udao = new CartDAO();
		
		//call signup()
		boolean result = udao.cartBook(bid,user);
		
		//redirect control to next page based on decision
		if(result){
			response.sendRedirect("cartView.jsp");
			
		}else{
			response.sendRedirect("bookView.jsp");
			
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doProcess(request,response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

}