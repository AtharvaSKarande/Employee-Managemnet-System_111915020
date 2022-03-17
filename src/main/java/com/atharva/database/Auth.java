package com.atharva.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Auth {
	String sql = "select * from AtharvaSK_111915020_detail where emp_id=? and password=?";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user_name = "atharva";
	String pass_word = "123456789";
	
	public boolean verifyUser(String emp_id, String pass) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,user_name,pass_word);
            
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, emp_id);
            st.setString(2, pass);
            
            ResultSet rs = st.executeQuery();
            if(rs.next()) {
            	return true;
            }
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
