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
 * Servlet implementation class ViewCart
 */
@WebServlet("/view_cart")
public class ViewCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String auid = (String)request.getAttribute("uid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select cid, cart.uid, image, product.name, description, quantity, price, qty from user, product, cart where user.uid=? and user.uid=cart.uid and product.pid=cart.pid";
				PreparedStatement pstm = con.prepareStatement(sql);
				
				if(uid.equals("null")) {
					pstm.setString(1, auid);
				}
				else {
					pstm.setString(1, uid);
				}
				
				ResultSet rs = pstm.executeQuery();
				
				@SuppressWarnings("rawtypes")
				ArrayList<HashMap> arr = new ArrayList<>();
				
				while(rs.next()) {
					HashMap<String, String> hm = new HashMap<>();
					
					hm.put("cid", rs.getString("cid"));
					hm.put("uid", rs.getString("cart.uid"));
					hm.put("image", rs.getString("image"));
					hm.put("name", rs.getString("product.name"));
					hm.put("description", rs.getString("description"));
					hm.put("quantity", rs.getString("quantity"));
					
					int price = rs.getInt("price");
					price *= rs.getInt("qty");
					hm.put("price", String.valueOf(price));
					hm.put("qty", rs.getString("qty"));
					
					arr.add(hm);
				}
				
				request.setAttribute("product", arr);
				request.getRequestDispatcher("cart.jsp").forward(request, response);
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
