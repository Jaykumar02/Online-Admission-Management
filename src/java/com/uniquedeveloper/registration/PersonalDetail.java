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

@WebServlet("/PersonalDetail")
public class PersonalDetail extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("firstname");
        String mname = request.getParameter("middlename");
        String lname = request.getParameter("lastname");
        String email = request.getParameter("emailid");
        String number = request.getParameter("phonenumber");
        String dob = request.getParameter("dateofbirth");
        String aadhar = request.getParameter("aadharno");
        String bg = request.getParameter("bloodgroup");
        String religion = request.getParameter("religion1");
        String mothertou = request.getParameter("mothertounge");
        String pob = request.getParameter("placeofbirth");
        String add1 = request.getParameter("address1");
        String add2 = request.getParameter("address2");
        String city = request.getParameter("city1");
        String region = request.getParameter("region1");
        String zip = request.getParameter("zip1");
        String Country = request.getParameter("Country1");
        String gender = request.getParameter("gender1");
        String category = request.getParameter("category1");

        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");
            PreparedStatement pst = con.prepareStatement("insert into personal_details(fname,mname,lname,email,number,dob,aadhar,bg,religion,mothertou,pob,add1,add2,city,region,zip,Country,gender,category) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            pst.setString(1, fname);
            pst.setString(2, mname);
            pst.setString(3, lname);
            pst.setString(4, email);
            pst.setString(5, number);
            pst.setString(6, dob);
            pst.setString(7, aadhar);
            pst.setString(8, bg);
            pst.setString(9, religion);
            pst.setString(10, mothertou);
            pst.setString(11, pob);
            pst.setString(12, add1);
            pst.setString(13, add2);
            pst.setString(14, city);
            pst.setString(15, region);
            pst.setString(16, zip);
            pst.setString(17, Country);
            pst.setString(18, gender);
            pst.setString(19, category);
            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("PersonalDetails.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
