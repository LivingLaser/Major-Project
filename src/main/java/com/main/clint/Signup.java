package com.main.clint;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet { 
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone_number = request.getParameter("phone_number");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        
        if(!password.equals(confirm_password)) {
            String color = "danger";
            String msg = "Passwords do match.";
            HttpSession session = request.getSession();
            session.setAttribute("message", msg);
            session.setAttribute("color",color);
            response.sendRedirect("signup.jsp");
        }
        else {
         try
         {
           Class.forName("com.mysql.cj.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom", "root", "DBMS");
    	   
    	   String sql = "INSERT INTO user(name,email,phone_number,address,city,pincode,password) VALUES ('"+name+"','"+email+"','"+phone_number+"','"+address+"','"+city+"','"+pincode+"','"+password+"')";
    	   //String sql = "insert into user set name='"+name+"',email='"+email+"',phone_number='"+phone_number+"',address='"+address+"',city='"+city+"',pincode='"+pincode+"',password='"+password+"'";
		   PreparedStatement p_stm = con.prepareStatement(sql);
		   
		   int rows = p_stm.executeUpdate();
		   if(rows>0) 
		   { //condition check
		   String color = "success";
		   String msg = "New account created successfully!";
		   HttpSession session = request.getSession();
		   session.setAttribute("message", msg);
	   	   session.setAttribute("color",color);
		   }
		   else 
		   {
		   String color = "danger";
		   String msg = "Failed to create a new account.";
		   HttpSession session = request.getSession();
		   session.setAttribute("message", msg);
		   session.setAttribute("color",color);
		   }
		   response.sendRedirect("login.jsp");
         }
         catch(Exception e)
         {
           System.out.println("Exception: " + e);
         }
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
