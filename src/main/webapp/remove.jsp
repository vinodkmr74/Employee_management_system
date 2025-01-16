<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> Recode deleted</h1>

<%
          
           try
           {
        	   
        	   String id=request.getParameter("id");

           
          Class.forName("com.mysql.cj.jdbc.Driver");
        	
           Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr", "root", "root");
      
          String s = "Delete from addemp where id='"+id+"'";
    
          PreparedStatement p = com.prepareStatement(s);
        
         
       
       
        int i = p.executeUpdate();
           
           
           if(i>0)
           {
        	   response.sendRedirect("remove.jsp");
        	  System.out.println("succefull delete");
           }
           else
           {
        	   response.sendRedirect("remove.jsp");
           }
           }
        
       catch(Exception e)
        {
    	   System.out.print(e);
        	e.printStackTrace();
        }
        
      %>


</body>
</html>