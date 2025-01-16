<%@page import="java.sql.ResultSet"%>
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
<link rel="stylesheet" href="search1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

<form action=""method="post">


<div>

<h1>View Employee Update and Delete Detail</h1>

</div>

<div class="box">

	<table border="3" id="table">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>FATHER'S NAME</th>
			<th>EMAIL</th>
			<th>ADDRESS</th>
			<th>BIRTH</th>
			<th>AADHAR Number</th>
			<th>PHONE</th>
			<th>POSITION</th>
			<th>EDUCATION</th>
			<th>SARALY</th>
			<th>USER_TYPE</th>
			<th>REMOVE</th>
			<th>DELETE</th>
			
		</tr>
			<%
		try{
			
			String id=request.getParameter("id");
			
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","root");
        String s="select * from addemp where id="+id;
        PreparedStatement p=con.prepareStatement(s);
        
        ResultSet re=p.executeQuery();
      
        while(re.next())
        {  
		%>
		
		<tr>
		<td><%=re.getString("id") %></td>
		<td><%=re.getString("name") %></td>
		<td><%=re.getString("father_name") %></td>
		<td><%=re.getString("email") %></td>
		<td><%=re.getString("address")%></td>
		<td><%=re.getString("birth")%></td>
		<td><%=re.getString("adhar")%></td>
		<td><%=re.getString("phone")%></td>
		<td><%=re.getString("position")%></td>
		<td><%=re.getString("education")%></td>
		<td><%=re.getString("salary")%></td>
		<td><%=re.getString("user_type")%></td>
		
				
	
		
		
		  <% int idd= re.getInt("id");%>
        
	
        <td class="remo">
			
			<a href="remove.jsp?id=<%=idd%>" id="remove">
				<i class="fa-solid fa-trash"></i>  REMOVE</a>
			
	   
		</td>
         <td class="up">
         
         <a href="update_employee.jsp?id=<%=idd%>" id="update">
		 <i class="fa-regular fa-pen-to-square"></i> UPDATE</a></td>
		

				
		</tr>
		
		</form>
		<% 
        }
		}
		
		 catch(Exception e)
        
        {
       	 System.out.print(e);
        	e.printStackTrace();
        }
      
     
%>

		
		</table>
		<br><br>
		
</div>
</body>
</html>