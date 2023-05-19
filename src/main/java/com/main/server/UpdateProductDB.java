package com.main.server;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UpdateProductDB
 */
@WebServlet("/update_product_db")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 2,
		maxFileSize = 1024 * 1024 * 20,
		maxRequestSize = 1024 * 1024 * 200
		)
public class UpdateProductDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid = request.getParameter("pid");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String category = request.getParameter("category");
		String stock = request.getParameter("stock");
		
		Part pt = request.getPart("image");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			if(pt.getSize()>0) {
				String image = pt.getSubmittedFileName();
				
				//pt.write("C:\\Users\\User\\Desktop\\Java (J2EE)\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
				//pt.write("C:\\Users\\rajmi\\OneDrive\\Desktop\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
				//pt.write("C:\\Users\\LENOVO\\Desktop\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
				//pt.write("C:\\Users\\Admin\\Dropbox\\My PC (LAPTOP-KSDBGO4J)\\Desktop\\Major Proj\\Major-Project\\src\\main\\webapp\\img\\" + image);
				//pt.write("I:\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
				
				try {
					String sql = "update product set name=?, description=?, quantity=?, price=?, category=?, image=?, stock=? where pid=?";
					PreparedStatement pstm = con.prepareStatement(sql);
					pstm.setString(1, name);
					pstm.setString(2, description);
					pstm.setString(3, quantity);
					pstm.setString(4, price);
					pstm.setString(5, category);
					pstm.setString(6, image);
					pstm.setString(7, stock);
					pstm.setString(8, pid);
					pstm.executeUpdate();
				}
				finally {
					con.close();
				}
			}
			else {
				try {
					String sql = "update product set name=?, description=?, quantity=?, price=?, category=?, stock=? where pid=?";
					PreparedStatement pstm = con.prepareStatement(sql);
					pstm.setString(1, name);
					pstm.setString(2, description);
					pstm.setString(3, quantity);
					pstm.setString(4, price);
					pstm.setString(5, category);
					pstm.setString(6, stock);
					pstm.setString(7, pid);
					pstm.executeUpdate();
				}
				finally {
					con.close();
				}
			}
			
			response.sendRedirect("product_list");
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
