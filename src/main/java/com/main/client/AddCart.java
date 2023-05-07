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
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
				
				try {
					String vsql = "select stock from product where pid=?";
					PreparedStatement vpstm = con.prepareStatement(vsql);
					vpstm.setNString(1, pid);
					ResultSet vrs = vpstm.executeQuery();
					
					if(vrs.next()) {
						int stock = vrs.getInt("stock");
						
						if(stock==0) {
							String color = "warning";
							String msg = "This product is currently out of stock, you can add it to your cart when it's available again";
							HttpSession session = request.getSession();
							session.setAttribute("message", msg);
							session.setAttribute("color", color);
							response.sendRedirect(referer);
						}
						else {
							String csql = "select cid, qty from cart where uid=? and pid=?";
							PreparedStatement cpstm = con.prepareStatement(csql);
							cpstm.setString(1, uid);
							cpstm.setString(2, pid);
							ResultSet rs = cpstm.executeQuery();
							
							if(rs.next()) {
								String cid = rs.getString("cid");
								int qty = rs.getInt("qty");
								qty += 1;
								
								String sql = "update cart set qty=? where cid=?";
								PreparedStatement pstm = con.prepareStatement(sql);
								pstm.setInt(1, qty);
								pstm.setString(2, cid);
								int rows = pstm.executeUpdate();
								
								if(rows==1) {
									stock -= 1;
									String bsql = "update product set stock=? where pid=?";
									PreparedStatement bpstm = con.prepareStatement(bsql);
									bpstm.setInt(1, stock);
									bpstm.setString(2, pid);
									bpstm.executeUpdate();
									
									String color = "success";
									String msg = "Product has been added to your cart";
									HttpSession session = request.getSession();
									session.setAttribute("message", msg);
									session.setAttribute("color", color);
									response.sendRedirect(referer);
								}
							}
							else {
								String sql = "insert into cart set uid=?, pid=?, qty=1";
								PreparedStatement pstm = con.prepareStatement(sql);
								pstm.setString(1, uid);
								pstm.setString(2, pid);
								int rows = pstm.executeUpdate();
								
								if(rows==1) {
									stock -= 1;
									String bsql = "update product set stock=? where pid=?";
									PreparedStatement bpstm = con.prepareStatement(bsql);
									bpstm.setInt(1, stock);
									bpstm.setString(2, pid);
									bpstm.executeUpdate();
									
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
