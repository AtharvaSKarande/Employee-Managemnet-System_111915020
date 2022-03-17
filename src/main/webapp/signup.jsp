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
	
	<form style="margin: auto; width: 500px;" action="SignUp" method="post">
	<br/>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Employee ID</span>
	  </div>
	  <input type="text" class="form-control" placeholder="Employee ID" name="emp_id">
	</div>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">First Name</span>
	  </div>
	  <input type="text" class="form-control" placeholder="First Name" name="fname">
	</div>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Last Name</span>
	  </div>
	  <input type="text" class="form-control" placeholder="Last Name" name="lname">
	</div>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Date of Birth</span>
	  </div>
	  <input type="text" class="form-control" placeholder="Date of Birth" name="dob">
	</div>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Contact No.</span>
	  </div>
	  <input type="text" class="form-control" placeholder="Contact No." name="con_no">
	</div>
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="basic-addon1">Password</span>
	  </div>
	  <input type="password" class="form-control" placeholder="Password" name="pass">
	</div>

		<input style="margin-left:200px;" class="btn btn-dark" type="submit" value="SignUp">
	</form>
	<br/>
	<form action="login.jsp" method="post">
		<input style="margin-left:725px;"class="btn btn-dark" type="submit" value="Login">
	</form>
	
</body>
</html>