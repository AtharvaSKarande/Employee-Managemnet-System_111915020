<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar  navbar-dark bg-dark">
	  <a class="navbar-brand" href="#">Employee Login</a>
	</nav>
	
	<form style="margin: auto; width: 500px;" action="Login" method="post">
	<br/>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Employee ID</span>
	  </div>
	  <input type="text" class="form-control" placeholder="Employee ID" name="login_emp_no">
	</div>
	
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Password</span>
	  </div>
	  <input type="password" class="form-control" placeholder="Password" name="login_pass">
	</div>
		<input style="margin-left: 200px;" class="btn btn-dark" type="submit" value="Login">
	</form>
	
	
</body>
</html>