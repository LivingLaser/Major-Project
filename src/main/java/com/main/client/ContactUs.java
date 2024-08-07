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
 * Servlet implementation class ContactUs
 */
@WebServlet("/contact_us")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "insert into contact set name=?, email=?, message=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, name);
				pstm.setString(2, email);
				pstm.setString(3, message);
				int rows = pstm.executeUpdate();
				
				if(rows==1) {
					String color = "success";
					String msg = "We have received your message";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					response.sendRedirect("index.jsp");
				}
			}
			catch(Exception e) {
				String color = "danger";
				String msg = "This e-mail id is already in use";
				HttpSession session = request.getSession();
				session.setAttribute("message", msg);
				session.setAttribute("color", color);
				response.sendRedirect("contact.jsp");
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
