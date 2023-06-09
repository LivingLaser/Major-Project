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
 * Servlet implementation class OrderData
 */
@WebServlet("/order_data")
public class OrderData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "select orders.uid, orders.pid, name, email, order_date, order_time from user, orders where user.uid=orders.uid order by order_date desc, order_time desc";
				PreparedStatement pstm = con.prepareStatement(sql);
				ResultSet rs = pstm.executeQuery();
				
				@SuppressWarnings("rawtypes")
				ArrayList<HashMap> arr = new ArrayList<>();
				
				while(rs.next()) {
					HashMap<String, String> hm = new HashMap<>();
					
					hm.put("uid", rs.getString("orders.uid"));
					hm.put("pid", rs.getString("orders.pid"));
					hm.put("name", rs.getString("name"));
					hm.put("email", rs.getString("email"));
					hm.put("date", rs.getString("order_date"));
					hm.put("time", rs.getString("order_time"));
					
					arr.add(hm);
				}
				
				request.setAttribute("order", arr);
				request.getRequestDispatcher("admin_orderdb.jsp").forward(request, response);
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
