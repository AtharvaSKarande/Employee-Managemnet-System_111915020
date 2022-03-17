package com.atharva.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.atharva.database.Auth;

public class Login extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emp_no = request.getParameter("login_emp_no");
		String pass = request.getParameter("login_pass");
		
		Auth auth = new Auth();
		
		if(auth.verifyUser(emp_no,pass)) {
			HttpSession ses = request.getSession();
			ses.setAttribute("emp_id", emp_no);
			
			response.sendRedirect("report.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
	}
}
