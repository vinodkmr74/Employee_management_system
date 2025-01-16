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
<link rel="stylesheet" href="viewemp.css">

</head>
<body>


<form action="search.jsp"method="post">



<h1>View Employee</h1>



<button onclick="window.print()">Print</button>
SEARCH RECORD<input type="number"name="id">
<input type="submit" value="SEARCH">

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
			<th>PASSWORD</th>
			<th>USER_TYPE</th>
			
		</tr>
		
		<%
		try{
			
		Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","root");
        String s="select * from addemp";
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
		<td><%=re.getString("password")%></td>
		<td><%=re.getString("user_type")%></td>
		
				
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
