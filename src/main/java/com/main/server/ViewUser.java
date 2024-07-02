package com.main.server;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewUser
 */
@WebServlet("/view_user")
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from user where uid=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, uid);
				ResultSet rs = pstm.executeQuery();
				
				HashMap<String, String> hm = new HashMap<>();
				
				if(rs.next()) {
					hm.put("uid", rs.getString("uid"));
					hm.put("name", rs.getString("name"));
					hm.put("email", rs.getString("email"));
					hm.put("phone", rs.getString("phone_number"));
					hm.put("address", rs.getString("address"));
					hm.put("city", rs.getString("city"));
					hm.put("pincode", rs.getString("pincode"));
					hm.put("password", rs.getString("password"));
				}
				
				request.setAttribute("view", hm);
				request.getRequestDispatcher("admin_user_view.jsp").forward(request, response);
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
