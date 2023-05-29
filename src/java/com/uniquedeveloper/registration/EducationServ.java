package com.uniquedeveloper.registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EducationServ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String user = request.getParameter("user1");
        String year = request.getParameter("eduyear");
        String branch = request.getParameter("edubranch");
        String sboard = request.getParameter("eduboard");
        String schl = request.getParameter("school");
        String sscper = request.getParameter("ssc");
        String sphoto = request.getParameter("sscphoto");
        String hboard = request.getParameter("hboard");
        String clg = request.getParameter("college");
        String hscper = request.getParameter("hsc");
        String hphoto = request.getParameter("hscphoto");
        String cetmarks = request.getParameter("cet");
        String cetphoto = request.getParameter("cphoto");
        String jeemarks = request.getParameter("jee");
        String jeephoto = request.getParameter("jphoto");
        String jeeadvmarks = request.getParameter("jeeadv");
        String jeeadvphoto = request.getParameter("japhoto");
        
        
        

        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
        PreparedStatement pst = con.prepareStatement("insert into education_detail(user,year,branch,sboard,schl,sscper,sphoto,hboard,clg,hscper,hphoto,cetmarks,cetphoto,jeemarks,jeephoto,jeeadvmarks,jeeadvphoto) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            pst.setString(1, user);
            pst.setString(2, year);
            pst.setString(3, branch);
            pst.setString(4, sboard);
            pst.setString(5, schl);
            pst.setString(6, sscper); 
            pst.setString(7, sphoto);
            pst.setString(8, hboard);
            pst.setString(9, clg);
            pst.setString(10, hscper);
            pst.setString(11, hphoto);
            pst.setString(12, cetmarks);
            pst.setString(13, cetphoto);
            pst.setString(14, jeemarks);
            pst.setString(15, jeephoto);
            pst.setString(16, jeeadvmarks);
            pst.setString(17, jeeadvphoto);
           int rowCount = pst.executeUpdate();
        dispatcher = request.getRequestDispatcher("Education.jsp");
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