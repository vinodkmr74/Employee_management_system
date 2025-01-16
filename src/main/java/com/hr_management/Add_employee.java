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

@WebServlet("/addemp")
public class Add_employee extends HttpServlet {

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
			PreparedStatement ps = com.prepareStatement("insert into addemp values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

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

			int count = ps.executeUpdate();

			if (count > 0) {
				resp.setContentType("text/html");
				out.println("<h1 style='color:green'>Add_Emp_succesfull</h1>");

				RequestDispatcher rd = req.getRequestDispatcher("/employee.jsp");
				rd.include(req, resp);
			} else {

				resp.setContentType("text/html");
				RequestDispatcher rd = req.getRequestDispatcher("/employee.jsp");
				rd.forward(req, resp);
				out.println("<h1 style='color:red'>please fill the form</h1>");

			}

		} catch (Exception e) {
			
			e.printStackTrace();

		}
		
		
		
		
	}

}
