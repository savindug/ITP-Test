package com.savindu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {


	//establishing up the database connection with dburl,drivers, pwd and database name
	
	
	private static final String URL = "jdbc:mysql://localhost:3306/itp_2019";
	
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	
	private static final String USERNAME = "root";
	
	private static final String PASSWORD = "12345";
	
	private static Connection connection = null;
	

public static Connection openConnection() {

//checking for the connection---------------------------


	if(connection != null) {

		return connection;
	
	}else {
		
		try {
			
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
	
		}catch(ClassNotFoundException e){
			
			e.printStackTrace();
			
		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}

		return connection;
	}
}
}
