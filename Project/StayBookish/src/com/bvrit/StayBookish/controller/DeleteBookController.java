package com.bvrit.StayBookish.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.StayBookish.dao.CartDAO;

public class DeleteBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteBookController() {
        super();
    }

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
			int bid = Integer.parseInt(request.getParameter("bid"));
			
			CartDAO cdao = new CartDAO();
			HttpSession session = request.getSession(true);
			boolean result = cdao.deleteCart(bid);
			if(result) {
				String user = (String)session.getAttribute("user");
				request.getRequestDispatcher("cartView.jsp").forward(request, response);
			}
			else 
				response.sendRedirect("cartView.jsp");
		} catch (NumberFormatException e) {

		} catch (ClassNotFoundException e) {

		} catch (SQLException e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}