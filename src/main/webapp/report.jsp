<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		if(session.getAttribute("emp_id")==null){
				response.sendRedirect("signup.jsp");
			}
	%>
	
	<%@ page import="com.atharva.database.Fetch" %>
	<%@ page import="java.util.ArrayList" %>
	<%@ page import="java.util.List" %>
	<%	
	Fetch rec = new Fetch();
	int month =0, bonus=0;
	List<List<String>> records = rec.fetch(); %>
	
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">Employee No.</th>
	      <th scope="col">Job Role</th>
	      <th scope="col">Monthly Salary</th>
	      <th scope="col">Yearly Bonus</th>
	    </tr>
	  </thead>
	  <tbody>
	    <%
	    for(List<String> l : records){
	    	%>
	    <tr>
	    <%
	    month+=Integer.parseInt(l.get(2));
	    bonus+=Integer.parseInt(l.get(3));
	    
			for(String s : l){
				%>
				<td>
				<%= s%>
				</td>
				<%
			}
			%>
			</tr>
			<%
		}
	    %>
	    <tr>
	      <td scope="col"><b>Total</b></th>
	      <td scope="col"><b>-</b></th>
	      <td scope="col"><b><%="INR "+month %></b></th>
	      <td scope="col"><b><%="INR "+bonus %></b></th>
	    </tr>
	</tbody>
	</table>
	
	<form action="LogOut">
	<input type="submit" value="LogOut">
	</form>
</body>
</html>