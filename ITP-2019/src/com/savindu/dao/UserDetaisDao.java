package com.savindu.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/*
 * @author : Savindu Bashitha
 * Student ID : IT18177442
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;  

import com.savindu.entity.User;

public class UserDetaisDao {
	
	public List<User> getUserDetails() throws ClassNotFoundException{
		List<User> userList = new ArrayList<User>();
		
		Class.forName("com.mysql.jdbc.Driver");
		
		        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
		                "root", "12345")){
		
		        		Statement st = connection.createStatement();
		        		st.executeQuery("select * from user");
		        		ResultSet rs = st.getResultSet();
		        				while(rs.next()){
		        					 User user = new User();
		        					 user.setUsername(rs.getString("username"));
		        					 user.setEmail(rs.getString("email"));
		        					 user.setfName(rs.getString("fName"));
		        					 user.setLname(rs.getString("lname"));
		        					 user.setContact(rs.getString("contact"));
		        					 user.setCreateDate(rs.getString("createDate"));
		        					 user.setLastLogIn(rs.getString("lastUpdate"));
		        					 userList.add(user);
		        					 
		        				}
		        		
		        }catch (SQLException e) {
		        	// process sql exception
		            printSQLException(e);
		        }
				return userList;
		
		//return users;
	}
	
	public List<User> listUsers() throws ClassNotFoundException{
		List<User> userList = new ArrayList<User>();
		
		Class.forName("com.mysql.jdbc.Driver");
		
		        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
		                "root", "12345")){
		
		        		Statement st = connection.createStatement();
		        		st.executeQuery("select * from user");
		        		ResultSet rs = st.getResultSet();
		        				while(rs.next()){
		        					 User user = new User();
		        					 user.setUsername(rs.getString("username"));
		        					 user.setEmail(rs.getString("email"));
		        					 user.setfName(rs.getString("fName"));
		        					 user.setLname(rs.getString("lname"));
		        					 user.setContact(rs.getString("contact"));
		        					 user.setCreateDate(rs.getString("createDate"));
		        					 user.setLastLogIn(rs.getString("lastUpdate"));
		        					 userList.add(user);
		        					 
		        				}
		        		
		        }catch (SQLException e) {
		        	// process sql exception
		            printSQLException(e);
		        }
				return userList;
		
		//return users;
	}

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}