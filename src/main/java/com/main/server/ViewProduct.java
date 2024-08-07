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
 * Servlet implementation class ViewProduct
 */
@WebServlet("/view_product")
public class ViewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from product where pid=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, pid);
				ResultSet rs = pstm.executeQuery();
				
				HashMap<String, String> hm = new HashMap<>();
				
				if(rs.next()) {
					hm.put("pid", rs.getString("pid"));
					hm.put("name", rs.getString("name"));
					hm.put("description", rs.getString("description"));
					hm.put("quantity", rs.getString("quantity"));
					hm.put("price", rs.getString("price"));
					if(rs.getString("category").equals("vegetablesfruits")) {
						hm.put("category", "Vegetables & Fruits");
					}
					if(rs.getString("category").equals("foograinsmasalas")) {
						hm.put("category", "Foodgrains & Masalas");
					}
					if(rs.getString("category").equals("eggsmeatsfish")) {
						hm.put("category", "Eggs, Meats & Fish");
					}
					hm.put("image", rs.getString("image"));
					hm.put("stock", rs.getString("stock"));
				}
				
				request.setAttribute("view", hm);
				request.getRequestDispatcher("admin_product_view.jsp").forward(request, response);
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
