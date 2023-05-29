package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisFeeServ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user2 = request.getParameter("username");
        String transaction = request.getParameter("transactionnumber");
        String payment = request.getParameter("paymentreceipt");

        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
            PreparedStatement pst = con.prepareStatement("insert into registrationfee(user2,transaction,payment) values(?,?,?)");
            
            pst.setString(1, user2);
            pst.setString(2, transaction);
            pst.setString(3, payment);
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("RegistrationFee.jsp");
            if (rowCount > 0) {
            request.setAttribute("status", "success");
        }else{
            request.setAttribute("status", "failed");
        }
        dispatcher.forward(request, response);
    }catch(Exception e) {
        e.printStackTrace();
   }finally{
        try{
            con.close(); 
        }catch (SQLException e) 
        {
             e.printStackTrace();
        }
    }
  }
}