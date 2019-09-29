package com.savindu.controller;

import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.savindu.entity.User;
import com.savindu.dao.LoginDao;
import com.savindu.dao.UserDetaisDao;

/*
 * @author : Savindu Bashitha
 * Student ID : IT18177442
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User login = new User();
        login.setUsername(username);
        login.setPassword(password);
        boolean status = false;
        try {
            if (loginDao.validate(login)) {
            	String uId = login.getUsrID();
                HttpSession session = request.getSession();
                session.setAttribute("userID",uId);
                response.sendRedirect("http://localhost:8081/ITP-2019/Interfaces/userAccount.jsp?userID="+uId);
               
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("status", status);
                		
                response.sendRedirect("http://localhost:8081/ITP-2019/Interfaces/user.jsp#login?invalid username and password");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}