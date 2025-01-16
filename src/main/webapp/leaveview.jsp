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

<link rel="stylesheet" href="leaveviews.css">

</head>
<body>


<form action="">

<h1>leave View</h1>
<label>SEARCH LEAVE</label>
<input type="number"name="id" id="input">
<input type="submit" value="SEARCH"id="sub">

	<table border="3" class="tab">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DEPARTMENT</th>
			<th>TO_DATE</th>
			<th>FROM_DATE</th>
			<th>REASON</th>
		    <th>STATS</th>
			
			
			
		</tr>
		
		<%
		try{
			String id=request.getParameter("id");

		Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","root");
        String s="select * from leav where id="+id;
        PreparedStatement p=con.prepareStatement(s);
        
        ResultSet re=p.executeQuery();
      
        while(re.next())
        {  
		%>
		
		<tr>
		<td><%=re.getString("id") %></td>
		<td><%=re.getString("name") %></td>
		<td><%=re.getString("selecte") %></td>
		<td><%=re.getString("to_date") %></td>
		<td><%=re.getString("from_date")%></td>
		<td><%=re.getString("reason")%></td>
		<td><%=re.getString("pending")%></td>
		
						
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






</form>



</body>
</html>