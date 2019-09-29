package com.savindu.dao;

/*
 * @author : Savindu Bashitha
 * Student ID : IT18177442
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.ResultSet;

import com.savindu.entity.User;

public class UserDao {

    public int registerUser(User user) throws ClassNotFoundException {
      
    	String INSERT_USERS_SQL = "INSERT INTO user" +
            "  (username, email, password) VALUES " +
            " (?,?,?);";

        String INSERT_CUSTOMER_SQL = "INSERT INTO customer" +
                "  (customerName) VALUES " +
                " (?);";
        int result = 0;
        int res=0;
        
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
                "root", "12345");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            
           
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();
            
    	    		

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
                "root", "12345");

            // Step 2:Create a statement using connection object
        	PreparedStatement preparedStatement1 = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement1.setString(1, user.getUsername());

            System.out.println(preparedStatement1);
            // Step 3: Execute the query or update query
            res = preparedStatement1.executeUpdate();
    	    		

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        
        return result;

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
