<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar  navbar-dark bg-dark">
	  <a class="navbar-brand" href="#">Employee Sign Up</a>
	</nav>
	
	<form action="SignUp" method="post">
		Employee ID : <input type="text" name="emp_id"><br/>
		First Name : <input type="text" name="fname"><br/>
		Last Name : <input type="text" name="lname"><br/>
		Date of Birth : <input type="text" name="dob"><br/>
		Contact no. : <input type="text" name="con_no"><br/>
		Password : <input type="password" name="pass"><br/>
		<input type="submit" value="SignUp">
	</form>
	<br/>
	<br/>
	<form action="login.jsp" method="post">
		<input type="submit" value="Login">
	</form>
	
</body>
</html>