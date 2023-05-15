package com.main.client;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EmptyCart
 */
@WebServlet("/empty_cart")
public class EmptyCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {	
				String sql = "delete from cart where uid=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, uid);
				int rows = pstm.executeUpdate();
				
				if(rows>0) {
					String color = "success";
					String msg = "Your cart has been emptied";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					request.setAttribute("uid", uid);
					request.getRequestDispatcher("view_cart").forward(request, response);
				}
				else {
					String color = "warning";
					String msg = "Your cart is already empty";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					request.setAttribute("uid", uid);
					request.getRequestDispatcher("view_cart").forward(request, response);
				}
			}
			finally {
				con.close();
			}
		}
		catch(Exception e) {
			System.out.println("Exception: " + e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
