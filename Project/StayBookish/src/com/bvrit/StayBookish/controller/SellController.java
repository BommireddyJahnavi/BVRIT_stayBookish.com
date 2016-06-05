package com.bvrit.StayBookish.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bvrit.StayBookish.dao.UserDAO;


public class SellController extends HttpServlet {protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//read username and password
		HttpSession session = request.getSession(true);
		String user = (String)session.getAttribute("user");
		if(user!= null){
			
			
			response.sendRedirect("addRecordView.jsp");
			//request.getAttribute("Invalid login credentials");
		}else{
			
			response.sendRedirect("loginView.jsp");
			
		}

}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}