


<%@ page import="java.sql.*" %>
<%@ page import="util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:white;">
<h2 style=text-align:left;> <a href="user_dashboard.jsp">  Back </a></h2>


<center>
<h1>GSD Requests</h1>
<table style="border:2px solid DodgerBlue; width:100%">
<tr style="background-color:#20B2AA;color:aliceblue; font-weight:bold;">
<td>ID</td>
<td>Remedy</td>
<td>Description</td>
<td>Phone</td>
<td>PC Number</td>
<td>GSD Number</td>


</tr>
<%

	Connection con=DBConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("SELECT ID,remedy,description,contact,Pc_NO,gsd_No FROM raise_gsd" );
	ResultSet rs=ps.executeQuery();
	
	while(rs.next()){
		
		%>
			<tr style="background-color:#32CD32;color:aliceblue; font-weight:bold;">
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2) %></td>

				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				

			</tr>
			
			<% 
	}
			
	

%>
</table>
</center>

</body>
</html>