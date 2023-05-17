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
 * Servlet implementation class Search
 */
@WebServlet("/search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String search = request.getParameter("search");
		
		if(search!=null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
				
				try {
					String sql = "select * from product where name like '%"+search+"%' order by name";
					PreparedStatement pstm = con.prepareStatement(sql);
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
					request.getRequestDispatcher("search.jsp").forward(request, response);
				}
				finally {
					con.close();
				}
			}
			catch(Exception e) {
				System.out.println("Exception: " + e);
			}
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
