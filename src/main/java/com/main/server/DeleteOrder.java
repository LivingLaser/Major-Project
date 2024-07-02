package com.main.server;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteOrder
 */
@WebServlet("/delete_order")
public class DeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "DBMS");
			
			try {
				String sql = "delete from orders where uid=? and pid=? and order_date=? and order_time=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, uid);
				pstm.setString(2, pid);
				pstm.setString(3, date);
				pstm.setString(4, time);
				pstm.executeUpdate();
				
				response.sendRedirect("order_data");
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
