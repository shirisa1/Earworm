package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

	public static Connection getConnection() throws ClassNotFoundException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@oracle.cccswnvlzm9u.us-east-2.rds.amazonaws.com:1521:orcl", "admin", "12345678");

			return connection;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

}