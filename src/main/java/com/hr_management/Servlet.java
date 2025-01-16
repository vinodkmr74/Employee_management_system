package com.hr_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/adminlogin")
public class Servlet extends HttpServlet {
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user = req.getParameter("user");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");

		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");
			PreparedStatement ps = com.prepareStatement("select * from addemp where user_type=? and email=? and password=?");

			ps.setString(1,user);
			ps.setString(2, email);
			ps.setString(3, pass);

			ResultSet rs = ps.executeQuery();

			if(rs.next()){
				
				
				 resp.setContentType("text/html");

	                // Check user type and redirect accordingly
	                if ("admin".equalsIgnoreCase(user)) {
	                	out.println("<h1 style='color:green'>Login succesfull</h1>");
	                    RequestDispatcher rd = req.getRequestDispatcher("/employee.jsp");
	                    rd.include(req, resp);
	                } else if ("employee".equalsIgnoreCase(user)) {
	                	
	                	out.println("<h1 style='color:green'>succesfull</h1>");
	                    RequestDispatcher rd = req.getRequestDispatcher("/emp_index.html");
	                    rd.include(req, resp);
	                } else {
	                    out.println("<h1 style='color:red'>Invalid user type</h1>");
	                }
				
				
				
//				resp.setContentType("text/html");
//				out.println("<h1 style='color:green'>succesfull</h1>");
//				RequestDispatcher rd=req.getRequestDispatcher("/employee.jsp");
//				rd.include(req, resp);
				

			}else {
				
				resp.setContentType("text/html");
				RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
				out.println("<h1 style='color:red'>Email and password not matched</h1>");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
	}

}
