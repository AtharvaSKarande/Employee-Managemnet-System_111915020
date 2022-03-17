package com.atharva.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Fetch {
	String sql = "SELECT * FROM  AtharvaSK_111915020_salary";
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user_name = "atharva";
	String pass_word = "123456789";
	
	public List<List<String>> fetch() {
        List<List<String>> records = new ArrayList<List<String>>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,user_name,pass_word);
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
            	List<String> l = new ArrayList<String>();
            	l.add(rs.getString("emp_id"));
            	l.add(rs.getString("job_role"));
            	l.add(rs.getString("monthly_salary"));
            	l.add(rs.getString("yearly_bonus"));
            	records.add(l);
            }
            return records;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return records;
	}
}
