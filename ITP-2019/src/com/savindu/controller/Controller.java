package com.savindu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.savindu.dao.UserManageDao;
import com.savindu.dao.UserManageImp;
import com.savindu.entity.User;



public class Controller extends HttpServlet {

	private static final long serialVersionUID = 1L;
	RequestDispatcher dispatcher = null;
	UserManageDao userManage = null;
	
	public Controller() {
		userManage = new UserManageImp(); 
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = req.getParameter("action");
		
		if(action == null) {
			action = "List";
		}
		
		switch(action) {
			case "List":
				listUser(req, resp);
						
			default:
				listUser(req, resp);
		}
		
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			List<User> list = userManage.get();
			
			request.setAttribute("list", list);
			
			dispatcher = request.getRequestDispatcher("Interfaces/UserManage.jsp");
			
			dispatcher.forward(request, response);
	}
	
	
}
