package com.main.server;

import java.io.IOException;
import java.sql.*;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewMessage
 */
@WebServlet("/view_message")
public class ViewMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			String sql = "select * from contact_us where id='"+id+"'";
			PreparedStatement pstm = con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			
			HashMap<String, String> hm = new HashMap<>();
			
			while(rs.next()) {
				hm.put("id", rs.getString("id"));
				hm.put("name", rs.getString("name"));
				hm.put("email", rs.getString("email"));
				hm.put("message", rs.getString("message"));
			}
			
			request.setAttribute("view", hm);
			request.getRequestDispatcher("admin_msg_view.jsp").forward(request, response);
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
