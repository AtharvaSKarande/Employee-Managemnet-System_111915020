package com.atharva.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.atharva.database.AddUser;

public class SignUp extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String emp_id = request.getParameter("emp_id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String con_no = request.getParameter("con_no");
		String pass = request.getParameter("pass");
		
		AddUser add = new AddUser();
		if(add.addNewUser(emp_id, fname, lname, dob, con_no, pass)) {
			response.sendRedirect("login.jsp");
		}
		else{
			response.sendRedirect("signup.jsp");
		}
	}
}
