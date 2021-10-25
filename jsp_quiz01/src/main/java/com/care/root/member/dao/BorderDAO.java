package com.care.root.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BorderDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public BorderDAO() {
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,"han","rlfdyd0603");
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
