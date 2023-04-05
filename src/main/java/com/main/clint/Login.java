package com.main.clint;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			String sql = "select name from user where email='"+email+"' and password='"+password+"'";
			PreparedStatement pstm = con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()) {
				String color = "success";
				String msg = "Welcome " + rs.getString("name");
				HttpSession session = request.getSession();
				session.setAttribute("message", msg);
				session.setAttribute("color",color);
				response.sendRedirect("index.jsp");
			}
			else {
				String color = "danger";
				String msg = "Wrong Email or Password";
				HttpSession session = request.getSession();
				session.setAttribute("message", msg);
				session.setAttribute("color",color);
				response.sendRedirect("login.jsp");
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
