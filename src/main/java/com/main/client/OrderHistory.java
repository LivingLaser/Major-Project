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
 * Servlet implementation class OrderHistory
 */
@WebServlet("/order_history")
public class OrderHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "select * from user, product, orders where user.uid=? and user.uid=orders.uid and product.pid=orders.pid order by order_date desc, order_time desc";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, uid);
				ResultSet rs = pstm.executeQuery();
				
				@SuppressWarnings("rawtypes")
				ArrayList<HashMap> arr = new ArrayList<>();
				
				while(rs.next()) {
					HashMap<String, String> hm = new HashMap<>();
					
					hm.put("date", rs.getString("order_date"));
					hm.put("time", rs.getString("order_time"));
					hm.put("name", rs.getString("product.name"));
					hm.put("quantity", rs.getString("quantity"));
					hm.put("price", rs.getString("price"));
					hm.put("qty", rs.getString("qty"));
					hm.put("payment", rs.getString("payment"));
					hm.put("phone", rs.getString("phone_number"));
					hm.put("address", rs.getString("address"));
					hm.put("city", rs.getString("city"));
					hm.put("pincode", rs.getString("pincode"));
					hm.put("image", rs.getString("image"));
					
					double total = rs.getDouble("price") * rs.getInt("qty");
					hm.put("total", String.valueOf(total));
					
					arr.add(hm);
				}
				
				request.setAttribute("order", arr);
				request.getRequestDispatcher("order.jsp").forward(request, response);
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
