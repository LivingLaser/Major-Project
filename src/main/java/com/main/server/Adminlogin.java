package com.main.server;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlogin
 */
@WebServlet("/adminlogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from admin where username=? and password=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, name);
				pstm.setString(2, password);
				ResultSet rs = pstm.executeQuery();
				
				if(rs.next()) {
					String color = "success";
					String msg = "Welcome " + rs.getString("username");
					String id = rs.getString("id");
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color",color);
					request.getSession().setAttribute("loggedAdmin", true);
					request.getSession().setAttribute("id", id);
					response.sendRedirect("admin_dashboard.jsp");
				}
				else {
					String color = "danger";
					String msg = "Wrong Username or Password";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color",color);
					request.getSession().removeAttribute("loggedAdmin");
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
