package com.savindu.dao;
import java.util.*;

import com.savindu.entity.User;

public interface UserManageDao {

	public List<User> get();
	
	public User get(int id);
	
	public boolean save(User user);
	
	public boolean delete(int id);
	
	public boolean update(User user);
}
