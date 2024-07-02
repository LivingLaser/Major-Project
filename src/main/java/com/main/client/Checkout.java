package com.main.client;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String asql = "select * from cart where uid=?";
				PreparedStatement apstm = con.prepareStatement(asql);
				apstm.setString(1, uid);
				ResultSet ars = apstm.executeQuery();
				
				if(ars.next()) {
					String csql = "select cart.uid, cart.pid, stock, qty from user, product, cart where user.uid=? and user.uid=cart.uid and product.pid=cart.pid";
					PreparedStatement cpstm = con.prepareStatement(csql);
					cpstm.setString(1, uid);
					ResultSet crs = cpstm.executeQuery();
					
					while(crs.next()) {
						String cuid = crs.getString("cart.uid");
						String cpid = crs.getString("cart.pid");
						int stock = crs.getInt("stock");
						int qty = crs.getInt("qty");
						
						if(stock==0) {
							String vsql = "delete from cart where uid=? and pid=?";
							PreparedStatement vpstm = con.prepareStatement(vsql);
							vpstm.setString(1, cuid);
							vpstm.setString(2, cpid);
							vpstm.executeUpdate();
						}
						
						if(qty>stock) {
							String vsql = "update cart set qty=? where uid=? and pid=?";
							PreparedStatement vpstm = con.prepareStatement(vsql);
							vpstm.setInt(1, stock);
							vpstm.setString(2, cuid);
							vpstm.setString(3, cpid);
							vpstm.executeUpdate();
						}
					}
					
					String sql1 = "select * from user where uid=?";
					String sql2 = "select product.name, image, qty, price from user, product, cart where user.uid=? and user.uid=cart.uid and product.pid=cart.pid";
					PreparedStatement pstm1 = con.prepareStatement(sql1);
					PreparedStatement pstm2 = con.prepareStatement(sql2);
					pstm1.setString(1, uid);
					pstm2.setString(1, uid);
					ResultSet rs1 = pstm1.executeQuery();
					ResultSet rs2 = pstm2.executeQuery();
					
					@SuppressWarnings("rawtypes")
					ArrayList<HashMap> arr = new ArrayList<>();
					HashMap<String, String> hm1 = new HashMap<>();
					int total = 0;
					
					if(rs1.next()) {
						hm1.put("name", rs1.getString("name"));
						hm1.put("email", rs1.getString("email"));
						hm1.put("phone", rs1.getString("phone_number"));
						hm1.put("address", rs1.getString("address"));
						hm1.put("city", rs1.getString("city"));
						hm1.put("pincode", rs1.getString("pincode"));
					}
					
					while(rs2.next()) {
						HashMap<String, String> hm2 = new HashMap<>();
						
						hm2.put("name", rs2.getString("product.name"));
						hm2.put("image", rs2.getString("image"));
						
						int price = rs2.getInt("price");
						price *= rs2.getInt("qty");
						total += price;
						
						hm2.put("qty", rs2.getString("qty"));
						hm2.put("price", String.valueOf(price));
						
						arr.add(hm2);
					}
					
					request.setAttribute("user", hm1);
					request.setAttribute("product", arr);
					request.setAttribute("total", String.valueOf(total));
					request.getRequestDispatcher("checkout.jsp").forward(request, response);
				}
				else {
					String color = "warning";
					String msg = "Add some products to your cart first before checkout";
					HttpSession session = request.getSession();
					session.setAttribute("message", msg);
					session.setAttribute("color", color);
					
					request.setAttribute("uid", uid);
					request.getRequestDispatcher("view_cart").forward(request, response);
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
