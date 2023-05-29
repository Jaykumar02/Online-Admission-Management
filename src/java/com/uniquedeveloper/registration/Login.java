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

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("username");
        String upwd = request.getParameter("password");
        HttpSession session =  request.getSession();
        RequestDispatcher dispatcher = null;
        if(uname == null || uname.equals("")) {
             session.setAttribute("status", "invalidname");
             dispatcher = request.getRequestDispatcher("login.jsp");
              dispatcher.forward(request,response);
        
        }
        if(upwd == null || uname.equals("")) {
             session.setAttribute("status", "invalidUpwd");
             dispatcher = request.getRequestDispatcher("login.jsp");
              dispatcher.forward(request,response);
        
        }
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
        PreparedStatement pst = con.prepareStatement("select * from users where uname = ? and upwd = ?");
        pst.setString(1, uname);
        pst.setString(2, upwd);
        
        ResultSet rs = pst.executeQuery();
        if(rs.next()) {
                session.setAttribute("name", rs.getString("uname"));
                dispatcher = request.getRequestDispatcher("index.jsp");
            }
            else {
                request.setAttribute("status","failed");
                dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request,response);
        
} 
    catch (Exception e)
    {
    e.printStackTrace();
}
    }
}

