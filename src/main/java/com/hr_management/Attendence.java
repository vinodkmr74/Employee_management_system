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


@WebServlet("/attend")
public class Attendence extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String select = req.getParameter("select");
		String date = req.getParameter("date");
		String jointine = req.getParameter("jointine");
		String outtime = req.getParameter("outtime");

		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");
			PreparedStatement ps = com.prepareStatement("insert into attendence values(?,?,?,?,?,?)");

			ps.setString(1,id);
			ps.setString(2,name );
			ps.setString(3, select);
			ps.setString(4,date);
			ps.setString(5, jointine);
			ps.setString(6,outtime );

			int count = ps.executeUpdate();

			if (count > 0){
				
				
				 resp.setContentType("text/html");

	               
				
				
				resp.setContentType("text/html");
				//out.println("<h1 style='color:green'>join succesfull</h1>");
				RequestDispatcher rd=req.getRequestDispatcher("/attendance.jsp");
				out.println("<h3 style='color:green'>join succesfull</h3>");
				rd.include(req, resp);
				

			}else {
				
				resp.setContentType("text/html");
				RequestDispatcher rd=req.getRequestDispatcher("/attendance.jsp");
				rd.include(req, resp);
				out.println("<h1 style='color:red'>Email and password not matched</h1>");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
	}

}

