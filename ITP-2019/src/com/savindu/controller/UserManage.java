package com.savindu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.savindu.entity.User;
import com.savindu.dao.UserDetaisDao;
/**
 * Servlet implementation class UserManage
 */
@WebServlet("/UserManage")
public class UserManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDetaisDao userDDao;
    RequestDispatcher dispature = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserManage() {
    	
        // TODO Auto-generated constructor stub
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
        try {
        	String action = request.getParameter("action");
    		
    		if( action == null) {
    			action = "LIST";
    		}
    		
    		switch(action) {
    		
    		case "LIST":
    			listUser(request, response);
    			break;
    			
//    		case "EDIT":
//    			userAccount(request,response);
//    			break;
//    			
//    		case "DELETE":
//    			deleteUser(request,response);
//    			break;
//    			
    		default:
    			listUser(request, response);
    		}
    		
            } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {

		//get list of suppliers
		List<User> list = userDDao.listUsers();
		
		//add list to request object
		request.setAttribute("list", list);
		
		//get request dispature
		RequestDispatcher dispature = request.getRequestDispatcher("/Interfaces/UserManage.jsp");
		
		//forward request distpature
		dispature.forward(request, response);
	}

}

