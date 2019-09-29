package com.savindu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.savindu.dao.UpdateUserDao;
import com.savindu.entity.User;

/*
 * @author : Savindu Bashitha
 * Student ID : IT18177442
 */


@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UpdateUserDao updateUserDao;

    public void init() {
    	updateUserDao = new UpdateUserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	String uID = request.getParameter("uID");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String fName = request.getParameter("fName");
        String lname = request.getParameter("lname");
        String contact = request.getParameter("contact");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        User updateUser = new User();
        updateUser.setUsrID(uID);
        updateUser.setUsername(username);
        updateUser.setPassword(password);
        updateUser.setEmail(email);
        updateUser.setfName(fName);
        updateUser.setLname(lname);
        updateUser.setContact(contact);
        updateUser.setStreet(street);
        updateUser.setCity(city);
        updateUser.setState(state);

        try {
        	updateUserDao.updateUser(updateUser);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        response.sendRedirect("http://localhost:8081/ITP-2019/Interfaces/userAccount.jsp?userID='"+uID+"'&Successfully Updated ");
    }
}