package com.uniquedeveloper.registration;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class DocuVeri extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user3 = request.getParameter("username3");
        String sscmark = request.getParameter("file1");
        String hscmark = request.getParameter("file2");
        String leavingcer = request.getParameter("file3");
        String aadharcard = request.getParameter("file4");
        String castecert = request.getParameter("file5");
        String photo = request.getParameter("file6");
        String sign = request.getParameter("file7");

        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");
            PreparedStatement pst = con.prepareStatement("insert into document__verification(user3,sscmark,hscmark,leavingcer,aadharcard,castecert,photo,sign) values(?,?,?,?,?,?,?,?)");

            pst.setString(1, user3);
            pst.setString(2, sscmark);
            pst.setString(3, hscmark);
            pst.setString(4, leavingcer);
            pst.setString(5, aadharcard);
            pst.setString(6, castecert);
            pst.setString(7, photo);
            pst.setString(8, sign);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("DocVeri.jsp");
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
