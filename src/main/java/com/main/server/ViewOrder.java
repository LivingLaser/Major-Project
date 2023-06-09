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
 * Servlet implementation class ViewOrder
 */
@WebServlet("/view_order")
public class ViewOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from user, product, orders where order_date=? and order_time=? and user.uid=orders.uid and product.pid=orders.pid";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, date);
				pstm.setString(2, time);
				ResultSet rs = pstm.executeQuery();
				
				HashMap<String, String> hm = new HashMap<>();
				
				if(rs.next()) {
					hm.put("uid", rs.getString("user.uid"));
					hm.put("uname", rs.getString("user.name"));
					hm.put("email", rs.getString("email"));
					hm.put("phone", rs.getString("phone_number"));
					hm.put("address", rs.getString("address"));
					hm.put("pincode", rs.getString("pincode"));
					hm.put("date", rs.getString("order_date"));
					hm.put("time", rs.getString("order_time"));
					hm.put("payment", rs.getString("payment"));
					hm.put("pname", rs.getString("product.name"));
					hm.put("quantity", rs.getString("quantity"));
					hm.put("qty", rs.getString("qty"));
					
					int price = rs.getInt("price");
					price *= rs.getInt("qty");
					hm.put("price", String.valueOf(price));
				}
				
				request.setAttribute("view", hm);
				request.getRequestDispatcher("admin_order_view.jsp").forward(request, response);
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
