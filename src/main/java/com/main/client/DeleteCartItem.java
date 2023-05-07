package com.main.client;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCartItem
 */
@WebServlet("/delete_cart_item")
public class DeleteCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cid = request.getParameter("cid");
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		String qty = request.getParameter("qty");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "delete from cart where cid=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, cid);
				int rows = pstm.executeUpdate();
				
				if(rows==1) {
					String vsql = "select stock from product where pid=?";
					PreparedStatement vpstm = con.prepareStatement(vsql);
					vpstm.setString(1, pid);
					ResultSet vrs = vpstm.executeQuery();
					
					if(vrs.next()) {
						int stock = vrs.getInt("stock");
						stock += Integer.parseInt(qty);
						
						String bsql = "update product set stock=? where pid=?";
						PreparedStatement bpstm = con.prepareStatement(bsql);
						bpstm.setInt(1, stock);
						bpstm.setString(2, pid);
						int row = bpstm.executeUpdate();
						
						if(row==1) {
							request.setAttribute("uid", uid);
							request.getRequestDispatcher("view_cart").forward(request, response);
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
