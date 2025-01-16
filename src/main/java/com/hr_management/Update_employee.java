package com.hr_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/update")
public class Update_employee extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String father_name = req.getParameter("father_name");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String birth = req.getParameter("birth");
		String adhar = req.getParameter("adhar");
		String phone = req.getParameter("phone");
		String position = req.getParameter("Position");
		String education = req.getParameter("education");
		String salary = req.getParameter("salary");
		String pass = req.getParameter("password");
		String us = req.getParameter("user");
		
		

		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");

		 String s="update addemp set id=?,name=?,father_name=?,email=?,address=?,birth=?,adhar=?,phone=?,position=?,education=?,salary=?,password=?,user_type=? where id="+id;

		        PreparedStatement ps=com.prepareStatement(s);
		        
		        ps.setString(1, id);
				ps.setString(2, name);
				ps.setString(3, father_name);
				ps.setString(4, email);
				ps.setString(5, address);
				ps.setString(6, birth);
				ps.setString(7, adhar);
				ps.setString(8, phone);
				ps.setString(9, position);
				ps.setString(10, education);
				ps.setString(11, salary);
				ps.setString(12, pass);
				ps.setString(13,us);

				
				
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				
				System.out.println("update");
				resp.sendRedirect("viewemp.jsp");

				
			}
			else
			{
			//	response.sendRedirect("get.jsp");
			}

		        				
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}



