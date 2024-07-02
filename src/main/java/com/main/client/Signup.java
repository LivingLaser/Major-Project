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
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm_password");
		
		if(password.equals(confirm_password)) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
				
				try {
					String sql = "insert into user set name=?, email=?, phone_number=?, address=?, city=?, pincode=?, password=?";
					PreparedStatement pstm = con.prepareStatement(sql);
					pstm.setString(1, name);
					pstm.setString(2, email);
					pstm.setString(3, phone);
					pstm.setString(4, address);
					pstm.setString(5, city);
					pstm.setString(6, pincode);
					pstm.setString(7, password);
					int rows = pstm.executeUpdate();
					
					if(rows==1) {
						String color = "success";
						String msg = "Account created successfully!";
						HttpSession session = request.getSession();
						session.setAttribute("message", msg);
						session.setAttribute("color",color);
						response.sendRedirect("login.jsp");
					}
				}
				catch(Exception e) {
					String color = "danger";
					String msg = "Failed to create an account, this e-mail id is already in use";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color",color);
					response.sendRedirect("signup.jsp");
				}
				finally {
					con.close();
				}
			}
			catch(Exception e) {
				System.out.println("Exception: " + e);
			}
		}
		else {
			String color = "danger";
			String msg = "Passwords not matched";
			HttpSession session = request.getSession();
			session.setAttribute("message", msg);
			session.setAttribute("color", color);
			response.sendRedirect("signup.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
