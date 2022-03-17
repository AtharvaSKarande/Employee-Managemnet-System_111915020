package com.atharva.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AddUser {
	String sql = "INSERT INTO AtharvaSK_111915020_detail(emp_id,first_name,last_name,date_of_birth,contact_no,password) VALUES ";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user_name = "atharva";
	String pass_word = "123456789";
	
	public boolean addNewUser(String emp_id, String fname, String lname, String dob, String contact_no, String pass) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,user_name,pass_word);
            
            sql = sql +"('"+emp_id+"','"+fname+"','"+lname+"','"+dob+"','"+contact_no+"','"+pass+"')";
            
            PreparedStatement st = con.prepareStatement(sql);
            st.executeQuery();
            con.commit();
            return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
