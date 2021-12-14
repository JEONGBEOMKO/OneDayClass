package com.bit.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTest {
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OneDayClass_1?serverTimezone=Asia/Seoul","root","mysql1234")){
			System.out.println(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
