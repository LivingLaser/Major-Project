package com.main.client;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Shop
 */
@WebServlet("/shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category = request.getParameter("category");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from product where category=? order by rand()";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, category);
				ResultSet rs = pstm.executeQuery();
				
				@SuppressWarnings("rawtypes")
				ArrayList<HashMap> arr = new ArrayList<>();
				
				while(rs.next()) {
					HashMap<String, String> hm = new HashMap<>();
					
					hm.put("pid", rs.getString("pid"));
					hm.put("name", rs.getString("name"));
					hm.put("description", rs.getString("description"));
					hm.put("quantity", rs.getString("quantity"));
					hm.put("price", rs.getString("price"));
					hm.put("image", rs.getString("image"));
					
					arr.add(hm);
				}
				
				request.setAttribute("product", arr);
				
				if(category.equals("vegetablesfruits")) {
					request.getRequestDispatcher("shop1.jsp").forward(request, response);
				}
				if(category.equals("foograinsmasalas")) {
					request.getRequestDispatcher("shop2.jsp").forward(request, response);
				}
				if(category.equals("eggsmeatsfish")) {
					request.getRequestDispatcher("shop3.jsp").forward(request, response);
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
