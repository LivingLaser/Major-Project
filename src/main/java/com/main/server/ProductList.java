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
 * Servlet implementation class ProductList
 */
@WebServlet("/product_list")
public class ProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select id, name, quantity, price from product";
				PreparedStatement pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				
				@SuppressWarnings("rawtypes")
				ArrayList<HashMap> arr = new ArrayList<>();
				
				while(rs.next()) {
					HashMap<String, String> hm = new HashMap<>();
					
					hm.put("id", rs.getString("id"));
					hm.put("name", rs.getString("name"));
					hm.put("quantity", rs.getString("quantity"));
					hm.put("price", rs.getString("price"));
					
					arr.add(hm);
				}
				
				request.setAttribute("product", arr);
				request.getRequestDispatcher("admin_productdb.jsp").forward(request, response);
			}
			finally {
				con.close();
			}
		}
		catch(Exception e) {
			System.out.println("Exception" + e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
