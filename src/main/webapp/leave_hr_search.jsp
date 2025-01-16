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
<link rel="stylesheet" href="leave_hr_search.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

<form action="">

			<h1>Leave Update</h1>
	<table border="3" class="tab">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th >DEPATMENT</th>
			<th >TO_DATE</th>
			<th>FROM_DATE</th>
			<th >REASON</th>
		    <th>STATUS</th>
		    <th>UPdate</th>
		    		
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
		
		
		  <% int idd= re.getInt("id");%>
        
        
         <td class="update"> 
			<a href="leave_hr_update_.jsp?id=<%=idd%>" id="up"><i class="fa-regular fa-pen-to-square"> </i> UPDATE</a>
		</td>
		

						
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