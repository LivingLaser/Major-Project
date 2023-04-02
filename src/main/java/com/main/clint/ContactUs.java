package com.main.clint;

import java.io.IOException;
import java.io.PrintWriter;
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
		
		PrintWriter pw = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			String sql = "insert into contact_us (name, email, message) values('"+name+"','"+email+"','"+message+"')";
			PreparedStatement pstm = con.prepareStatement(sql);
			int rows = pstm.executeUpdate();
			if(rows>0) { //condition check
			String color = "success";
			String msg = "We have received your message";
			HttpSession session = request.getSession();
			session.setAttribute("message", msg);
			session.setAttribute("color",color);
			}
			else {
			String color = "danger";
			String msg = "error";
			HttpSession session = request.getSession();
			session.setAttribute("message", msg);
			session.setAttribute("color",color);
			}
			response.sendRedirect("index.jsp");
		}
		catch(Exception e) {
			System.out.println("Exception: " + e);
			
			//response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
		
		//response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
//ggg
