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

<link rel="stylesheet" href="attendence_views.css">

</head>
<body>

	<h1>Attendance View</h1>
<form action="attendance.jsp" method="post">
	
			
			<table border="3" class="tab">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th >DEPATMENT</th>
			<th >DATE</th>
			<th>JOIN_DATE</th>
			<th >OUT_TIME</th>
		   
		    		
	
			
		</tr>
		
		<%
		try{
			String id=request.getParameter("id");

		Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","root");
        String s="select * from attendence where id="+id;
        PreparedStatement p=con.prepareStatement(s);
        
        ResultSet re=p.executeQuery();
      
        while(re.next())
        {  
		%>
		
		<tr>
		<td><%=re.getString("id") %></td>
		<td><%=re.getString("name") %></td>
		<td><%=re.getString("selecte") %></td>
		<td><%=re.getString("date") %></td>
		<td><%=re.getString("join_time")%></td>
		<td><%=re.getString("out_time")%></td>
						
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

</body>
</html>