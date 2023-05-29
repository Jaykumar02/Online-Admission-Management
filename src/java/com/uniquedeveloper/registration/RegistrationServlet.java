package com.uniquedeveloper.registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String uname = request.getParameter("name");
    
    
    
String pattern = "^[a-zA-Z]+$";
Pattern r = Pattern.compile(pattern);
Matcher m = r.matcher(uname);
if (m.find()) {
    // user input is valid, proceed with processing
} else {
    // user input is not valid, return error message to user
    String errorMessage = "Input must contain only letters";
    request.setAttribute("errorMessage", errorMessage);
        RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
    dispatcher.forward(request, response);
}

    
    
    String uemail = request.getParameter("email");
    String upwd = request.getParameter("pass");

    String passwordPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$"; // define the password pattern
if (!upwd.matches(passwordPattern)) {
    request.setAttribute("errorMessage", "Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one number.");
}

    String ubirth = request.getParameter("birthday");
    RequestDispatcher dispatcher = null;
    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
        PreparedStatement pst = con.prepareStatement("insert into users(uname,upwd,uemail,ubirth) values(?,?,?,?) ");
        pst.setString(1, uname);
        pst.setString(2, upwd);
        pst.setString(3, uemail);
        pst.setString(4, ubirth);
        int rowCount = pst.executeUpdate();
        dispatcher = request.getRequestDispatcher("registration.jsp");
        if (rowCount > 0) {
            request.setAttribute("status", "success");
        }else{
            request.setAttribute("status", "failed");
        }
        dispatcher.forward(request, response);
    }
    catch(IOException | ClassNotFoundException | SQLException | ServletException e) 
    {
        e.printStackTrace();
    }
    finally{
        try{
            con.close(); 
        }
        catch (SQLException e) 
        {
             e.printStackTrace();
        }
    }
    


    
  }
}