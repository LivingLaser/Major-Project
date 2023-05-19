package com.main.client;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Payment
 */
@WebServlet("/payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String payment = request.getParameter("payment");
		
		if(payment.equals("CARD")) {
			response.sendRedirect("payment.jsp");
		}
		else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
				
				try {
					String csql = "select product.pid, qty from user, product, cart where user.uid=? and user.uid=cart.uid and product.pid=cart.pid";
					PreparedStatement cpstm = con.prepareStatement(csql);
					cpstm.setString(1, uid);
					ResultSet crs = cpstm.executeQuery();
					
					while(crs.next()) {
						String pid = crs.getString("product.pid");
						int qty = crs.getInt("qty");
						
						String sql = "insert into orders set uid=?, pid=?, qty=?, payment=?, order_date=CURRENT_DATE, order_time=CURRENT_TIME";
						PreparedStatement pstm = con.prepareStatement(sql);
						pstm.setString(1, uid);
						pstm.setString(2, pid);
						pstm.setInt(3, qty);
						pstm.setString(4, payment);
						pstm.executeUpdate();
						
						String vsql = "select stock from product where pid=?";
						PreparedStatement vpstm = con.prepareStatement(vsql);
						vpstm.setString(1, pid);
						ResultSet vrs = vpstm.executeQuery();
						
						if(vrs.next()) {
							int stock = vrs.getInt("stock");
							stock -= qty;
							
							String bsql = "update product set stock=? where pid=?";
							PreparedStatement bpstm = con.prepareStatement(bsql);
							bpstm.setInt(1, stock);
							bpstm.setString(2, pid);
							bpstm.executeUpdate();
						}
					}
					
					String bsql = "delete from cart where uid=?";
					PreparedStatement bpstm = con.prepareStatement(bsql);
					bpstm.setString(1, uid);
					int rows = bpstm.executeUpdate();
					
					if(rows>0) {
						String color = "success";
						String msg = "Order Confirmed! Your order has been placed";
						HttpSession session = request.getSession();
						session.setAttribute("message", msg);
						session.setAttribute("color", color);
						response.sendRedirect("index.jsp");
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
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
