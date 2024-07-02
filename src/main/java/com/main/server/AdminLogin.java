package com.main.server;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlogin
 */
@WebServlet("/admin_login")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from admin where username=? and password=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, username);
				pstm.setString(2, password);
				ResultSet rs = pstm.executeQuery();
				
				if(rs.next()) {
					String color = "success";
					String msg = "Welcome " + rs.getString("username");
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					session.setAttribute("loggedAdmin", true);
					response.sendRedirect("admin_dashboard.jsp");
				}
				else {
					String color = "danger";
					String msg = "Wrong Admin ID or Password";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					response.sendRedirect("adminauth.jsp");
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
