
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


@WebServlet("/outtime")
public class Outtime extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String id = req.getParameter("id");
//		String name = req.getParameter("name");
//		String select = req.getParameter("select");
//		String todate = req.getParameter("todate");
//		String fromdate = req.getParameter("fromdate");
		String outt = req.getParameter("outtime");


		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");

			  String s="update attendence set id=?,out_time=? where id="+id;
		        PreparedStatement p=com.prepareStatement(s);
		        
				
				
			p.setString(1,id);
//			ps.setString(2,name );
//			ps.setString(3, select);
//			ps.setString(4,todate);
//			ps.setString(5, fromdate);
			p.setString(2,outt);

			int i=p.executeUpdate();
			if(i>0)
			{
				
				System.out.println("update");
				resp.setContentType("text/html");

				RequestDispatcher rd = req.getRequestDispatcher("/attendance.jsp");
				out.println("<h3 style='color:green'>over Time");

				rd.include(req, resp);
			}
			else
			{
				System.out.println("plese enter time out");
				resp.sendRedirect("attentance.jsp");
				//response.sendRedirect("get.jsp");
			}

		        				
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
	}

}


		
	

