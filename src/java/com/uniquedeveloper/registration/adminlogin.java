package com.uniquedeveloper.registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class adminlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String s1=request.getParameter("username"); 
            String s2=request.getParameter("password");
            HttpSession session =  request.getSession();
            RequestDispatcher dispatcher;

                if(s1.equals("username")&&s2.equals("password")) {
                dispatcher = request.getRequestDispatcher("adminpage.jsp");
                dispatcher.forward(request,response);

                }
                else {
                     session.setAttribute("status", "invalid");
                    dispatcher = request.getRequestDispatcher("AdminLogin.jsp");
                }
                dispatcher.forward(request,response);
    }
}

