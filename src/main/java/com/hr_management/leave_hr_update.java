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


@WebServlet("/hrleave")
public class leave_hr_update extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String id = req.getParameter("id");
//		String name = req.getParameter("name");
//		String select = req.getParameter("select");
//		String todate = req.getParameter("todate");
//		String fromdate = req.getParameter("fromdate");
		String pending = req.getParameter("pending");


		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");

			  String s="update leav set id=?,pending=? where id="+id;
		        PreparedStatement p=com.prepareStatement(s);
		        
				
				
			p.setString(1,id);
//			ps.setString(2,name );
//			ps.setString(3, select);
//			ps.setString(4,todate);
//			ps.setString(5, fromdate);
			p.setString(2,pending);

			int i=p.executeUpdate();
			if(i>0)
			{
				
				System.out.println("update");
				resp.sendRedirect("leave_hr_view.jsp");
				//RequestDispatcher rd = req.getRequestDispatcher("/leave_hr_view.jsp");
				//rd.include(req, resp);
			}
			else
			{
				//response.sendRedirect("get.jsp");
			}

		        				
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
	}

}


		
	
