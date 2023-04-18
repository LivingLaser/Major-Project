package com.server.main;

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
 * Servlet implementation class AddProduct
 */
@WebServlet("/add_product")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 2,  // 2 MB
		maxFileSize = 1024 * 1024 * 10,       // 10 MB
		maxRequestSize = 1024 * 1024 * 100    // 100 MB
		)
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String category = request.getParameter("category");
		
		Part pt = request.getPart("image");
		String image = pt.getSubmittedFileName();
		
		for(@SuppressWarnings("unused") Part fpart:request.getParts()) {
			//fpart.write("C:\\Users\\User\\Desktop\\Java (J2EE)\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
			//fpart.write("C:\\Users\\rajmi\\OneDrive\\Desktop\\Major Project\\Major-Project\\src\\main\\webapp\\img\\" + image);
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
			
			try {
				String sql = "insert into product set name=?, description=?, quantity=?, price=?, category=?, image=?";
				PreparedStatement pstm = con.prepareStatement(sql);
				pstm.setString(1, name);
				pstm.setString(2, description);
				pstm.setString(3, quantity);
				pstm.setString(4, price);
				pstm.setString(5, category);
				pstm.setString(6, image);
				pstm.executeUpdate();
				
				response.sendRedirect("product_list");
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
