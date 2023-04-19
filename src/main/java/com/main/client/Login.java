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
			
			try {
				String sql = "select uid, name from user where email=? and password=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, email);
				pstm.setString(2, password);
				ResultSet rs = pstm.executeQuery();
				
				if(rs.next()) {
					String color = "success";
					String msg = "Welcome " + rs.getString("name");
					String uid = rs.getString("uid");
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					request.getSession().setAttribute("loggedIn", true);
					request.getSession().setAttribute("uid", uid);
					response.sendRedirect("index.jsp");
				}
				else {
					String color = "danger";
					String msg = "Wrong Email or Password";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					request.getSession().removeAttribute("loggedIn");
					response.sendRedirect("login.jsp");
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
