package com.savindu.dao;

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
import java.text.SimpleDateFormat;
import java.util.Date;

import com.savindu.entity.User;

public class UpdateUserDao {
    public int updateUser(User updateUser) throws ClassNotFoundException {

    	
        String UPDATE_CUSTOMER_SQL = "UPDATE customer" + 
        		"SET street = ?, city = ?, state = ? " + 
        		"WHERE customerName = ?";
        
        
        String UPDATE_USERS_SQL = "UPDATE user" + 
        		"SET fName = ?, lname = ?, contact = ? " + 
        		"WHERE userID = ?";
        
        int result = 0;
        
        Class.forName("com.mysql.jdbc.Driver");

       try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
                "root", "12345");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL)) {
            preparedStatement.setString(1, updateUser.getStreet());
            preparedStatement.setString(2, updateUser.getCity());
            preparedStatement.setString(3, updateUser.getState());
            preparedStatement.setString(4, updateUser.getUsername());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();
            
            System.out.print(updateUser.getUsername());
           
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
       
       try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/itp_2019",
               "root", "12345");

           // Step 2:Create a statement using connection object
    		   PreparedStatement preparedStatement1 = connection.prepareStatement(UPDATE_USERS_SQL)) {
         
           preparedStatement1.setString(1, updateUser.getfName());
           preparedStatement1.setString(2, updateUser.getLname());
           preparedStatement1.setString(3, updateUser.getContact());
           preparedStatement1.setString(4, updateUser.getUsrID());

           System.out.println(preparedStatement1);
           // Step 3: Execute the query or update query
          int res = preparedStatement1.executeUpdate();
           
           System.out.print(updateUser.getUsername());
          
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
