package com.hr_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/leav")
public class Leave extends HttpServlet {
	
	
	private String pending;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		


		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String select = req.getParameter("select");
		String todate = req.getParameter("todate");
		String fromdate = req.getParameter("fromdate");
		String reason = req.getParameter("reason");
		String pending = req.getParameter("pending");


		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");
			PreparedStatement ps = com.prepareStatement("insert into leav values(?,?,?,?,?,?,?)");

			ps.setString(1,id);
			ps.setString(2,name );
			ps.setString(3, select);
			ps.setString(4,todate);
			ps.setString(5, fromdate);
			ps.setString(6,reason );
			ps.setString(7,"pending..." );


			int count = ps.executeUpdate();

			if (count > 0){
								
				 resp.setContentType("text/html");
				
				resp.setContentType("text/html");
				RequestDispatcher rd=req.getRequestDispatcher("/leave.jsp");
				rd.include(req, resp);
				out.println("<h1 style='color:green'>Appled</h1>");
				

			}else {
				
				resp.setContentType("text/html");
				RequestDispatcher rd=req.getRequestDispatcher("/leave.jsp");
				rd.include(req, resp);
				out.println("<h1 style='color:red'>leave not apply</h1>");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
	}

}




