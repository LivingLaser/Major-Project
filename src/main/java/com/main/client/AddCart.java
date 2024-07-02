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
 * Servlet implementation class AddCart
 */
@WebServlet("/add_cart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		String referer = request.getHeader("referer");
		
		if(!uid.equals("null")) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
				
				try {
					String csql = "select stock from product where pid=?";
					PreparedStatement cpstm = con.prepareStatement(csql);
					cpstm.setString(1, pid);
					ResultSet crs = cpstm.executeQuery();
					
					if(crs.next()) {
						int stock = crs.getInt("stock");
						
						if(stock==0) {
							String color = "warning";
							String msg = "This product is currently out of stock, you can add it to your cart when it's available again";
							HttpSession session = request.getSession();
							session.setAttribute("message", msg);
							session.setAttribute("color", color);
							response.sendRedirect(referer);
						}
						else {
							String vsql = "select qty from cart where uid=? and pid=?";
							PreparedStatement vpstm = con.prepareStatement(vsql);
							vpstm.setString(1, uid);
							vpstm.setString(2, pid);
							ResultSet vrs = vpstm.executeQuery();
							
							if(vrs.next()) {
								int qty = vrs.getInt("qty");
								qty += 1;
								
								String sql = "update cart set qty=? where uid=? and pid=?";
								PreparedStatement pstm = con.prepareStatement(sql);
								pstm.setInt(1, qty);
								pstm.setString(2, uid);
								pstm.setString(3, pid);
								int rows = pstm.executeUpdate();
								
								if(rows==1) {
									String color = "success";
									String msg = "Product has been added to your cart";
									HttpSession session = request.getSession();
									session.setAttribute("message", msg);
									session.setAttribute("color", color);
									response.sendRedirect(referer);
								}
							}
							else {
								String sql = "insert into cart set uid=?, pid=?";
								PreparedStatement pstm = con.prepareStatement(sql);
								pstm.setString(1, uid);
								pstm.setString(2, pid);
								int rows = pstm.executeUpdate();
								
								if(rows==1) {
									String color = "success";
									String msg = "Product has been added to your cart";
									HttpSession session = request.getSession();
									session.setAttribute("message", msg);
									session.setAttribute("color", color);
									response.sendRedirect(referer);
								}
							}
						}
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
		else {
			String color = "info";
			String msg = "Login to your account first";
			HttpSession session = request.getSession();
			session.setAttribute("message", msg);
			session.setAttribute("color", color);
			response.sendRedirect("login.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
