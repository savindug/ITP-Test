package com.savindu.dao;

import com.savindu.util.DBConn;

import java.sql.*;
import java.util.*;

import com.savindu.dao.UserManageDao;
import com.savindu.entity.User;

public class UserManageImp implements UserManageDao{

	Connection connection = null;
    ResultSet resultSet = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;

     
	@Override
	public List<User> get() {
		// TODO Auto-generated method stub
		/*passing an object of type customer to the list*/
		List<User> userlist = null;
		User user = null;
		
		/*try catch block to generate exception in case of an error*/
		try {
			
			userlist = new ArrayList<User>();
				
				String sql = "SELECT * FROM user";
				this.connection = DBConn.openConnection();
				
				this.statement = this.connection.createStatement();
				this.resultSet = this.statement.executeQuery(sql);
				
				while(this.resultSet.next()) {
					 user = new User();
					 user.setUsername(resultSet.getString("username"));
					 user.setEmail(resultSet.getString("email"));
					 user.setfName(resultSet.getString("fName"));
					 user.setLname(resultSet.getString("lname"));
					 user.setContact(resultSet.getString("contact"));
					 user.setCreateDate(resultSet.getString("createDate"));
					 user.setLastLogIn(resultSet.getString("lastUpdate"));
					 userlist.add(user);
					
					
					 userlist.add(user);
			}
		
			
		}catch(SQLException e) {
			
				e.printStackTrace();
		
		}
		
		return userlist;
	}


	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean save(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
