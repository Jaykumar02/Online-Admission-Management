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


public class ParentDetServ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String number = request.getParameter("phonenumber");
    String email = request.getParameter("emailid");
    String dob = request.getParameter("dateofbirth");
    String add1 = request.getParameter("address1");
    String add2 = request.getParameter("address2");
    String city = request.getParameter("city1");
    String region = request.getParameter("region1");
    String zip = request.getParameter("zip1");
    String country = request.getParameter("country1");
    String job = request.getParameter("jobrole");
    String officeadd = request.getParameter("officeaddress");
    String officeno = request.getParameter("officenumber");
    String salary = request.getParameter("annualsalary");
    String photo = request.getParameter("photograph");
    String sign = request.getParameter("signature");
    String mfname = request.getParameter("mfirstname");
    String mlname = request.getParameter("mlastname");
    String mnumber = request.getParameter("mphonenumber");
    String memail = request.getParameter("memailid");
    String mdob = request.getParameter("mdateofbirth");
    String madd1 = request.getParameter("maddress1");
    String madd2 = request.getParameter("maddress2");
    String mcity = request.getParameter("mcity1");
    String mregion = request.getParameter("mregion1");
    String mzip = request.getParameter("mzip1");
    String mcountry = request.getParameter("mcountry1");
    String mjob = request.getParameter("mjobrole");
    String mofficeadd = request.getParameter("mofficeaddress");
    String mofficeno = request.getParameter("mofficenumber");
    String msalary = request.getParameter("mannualsalary");
    String mphoto = request.getParameter("mphotograph");
    String msign = request.getParameter("msignature");
    
    RequestDispatcher dispatcher = null;
    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
        PreparedStatement pst = con.prepareStatement("insert into parent_details(fname,lname,number,email,dob,add1,add2,city,region,zip,country,job,officeadd,officeno,salary,photo,sign,mfname,mlname,mnumber,memail,mdob,madd1,madd2,mcity,mregion,mzip,mcountry,mjob,mofficeadd,mofficeno,msalary,mphoto,msign) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
       
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, number);
        pst.setString(4, email);
        pst.setString(5, dob);
        pst.setString(6, add1);
        pst.setString(7, add2);
        pst.setString(8, city);
        pst.setString(9, region);
        pst.setString(10, zip);
        pst.setString(11, country);
        pst.setString(12, job);
        pst.setString(13, officeadd);
        pst.setString(14, officeno);
        pst.setString(15, salary);
        pst.setString(16, photo);
        pst.setString(17, sign);
        pst.setString(18, mfname);
        pst.setString(19, mlname);
        pst.setString(20, mnumber);
        pst.setString(21, memail);
        pst.setString(22, mdob);
        pst.setString(23, madd1);
        pst.setString(24, madd2);
        pst.setString(25, mcity);
        pst.setString(26, mregion);
        pst.setString(27, mzip);
        pst.setString(28, mcountry);
        pst.setString(29, mjob);
        pst.setString(30, mofficeadd);
        pst.setString(31, mofficeno);
        pst.setString(32, msalary);
        pst.setString(33, mphoto);
        pst.setString(34, msign);
        int rowCount = pst.executeUpdate();
        dispatcher = request.getRequestDispatcher("ParentDetails.jsp");
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