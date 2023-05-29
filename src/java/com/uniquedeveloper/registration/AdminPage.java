package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/AdminPage")
public class AdminPage extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public AdminPage() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("adminpage.jsp");
        PrintWriter out = response.getWriter();

        String user = request.getParameter("user1");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");

            PreparedStatement ps = con.prepareStatement("select * from education_detail where user = ?");

            ps.setString(1, user);

            out.print("<table width=95% border=1>");
            out.print("<h3>EDUCATION DETAIL : </h3>");

            ResultSet rs = ps.executeQuery();

            ResultSetMetaData rsmd = rs.getMetaData();
            int totalColumn = rsmd.getColumnCount();
            out.print("<tr>");

            for (int i = 1; i <= totalColumn; i++) {
                out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            }

            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getInt(6) + "</td><td>" + rs.getBlob(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getInt(10) + "</td><td>" + rs.getBlob(11) + "</td><td>" + rs.getInt(12) + "</td><td>" + rs.getBlob(13) + "</td><td>" + rs.getInt(14) + "</td><td>" + rs.getBlob(15) + "</td><td>" + rs.getInt(16) + "</td><td>" + rs.getBlob(17) + "</td></tr>");
            }
            out.print("</table>");
        } catch (Exception e) {
            out.print(e);
        }

        String fname = request.getParameter("firstname");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");

            PreparedStatement ps = con.prepareStatement("select * from personal_details where fname = ?");

            ps.setString(1, fname);

            out.print("<table width=95% border=1>");
            out.print("<h3>Personal DETAIL : </h3>");

            ResultSet rs = ps.executeQuery();

            ResultSetMetaData rsmd = rs.getMetaData();
            int totalColumn = rsmd.getColumnCount();
            out.print("<tr>");

            for (int i = 1; i <= totalColumn; i++) {
                out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            }

            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getInt(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getInt(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td><td>" + rs.getString(11) + "</td><td>" + rs.getString(12) + "</td><td>" + rs.getString(13) + "</td><td>" + rs.getString(14) + "</td><td>" + rs.getString(15) + "</td><td>" + rs.getInt(16) + "</td><td>" + rs.getString(17) + "</td><td>" + rs.getString(18) + "</td><td>" + rs.getString(19) + "</td></tr>");
            }
            out.print("</table>");
        } catch (Exception e) {
            out.print(e);
        }

        String user2 = request.getParameter("username2");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");

            PreparedStatement ps = con.prepareStatement("select * from registrationfee where user2 = ?");

            ps.setString(1, user2);

            out.print("<table width=95% border=1>");
            out.print("<h3>REGISTRATION FEE : </h3>");

            ResultSet rs = ps.executeQuery();

            ResultSetMetaData rsmd = rs.getMetaData();
            int totalColumn = rsmd.getColumnCount();
            out.print("<tr>");

            for (int i = 1; i <= totalColumn; i++) {
                out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            }

            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getInt(2) + "</td><td>" + rs.getBlob(3) + "</td></tr>");
            }
            out.print("</table>");
        } catch (Exception e) {
            out.print(e);
        }

        String user3 = request.getParameter("username3");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root", "root");

            PreparedStatement ps = con.prepareStatement("select * from document__verification where user3 = ?");

            ps.setString(1, user3);

            out.print("<table width=95% border=1>");
            out.print("<h3>DOCUMENT VERIFICATION : </h3>");

            ResultSet rs = ps.executeQuery();

            ResultSetMetaData rsmd = rs.getMetaData();
            int totalColumn = rsmd.getColumnCount();
            out.print("<tr>");

            for (int i = 1; i <= totalColumn; i++) {
                out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            }

            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getBlob(2) + "</td><td>" + rs.getBlob(3) + "</td><td>" + rs.getBlob(4) + "</td><td>" + rs.getBlob(5) + "</td><td>" + rs.getBlob(6) + "</td><td>" + rs.getBlob(7) + "</td><td>" + rs.getBlob(8) + "</td></tr>");
            }
            out.print("</table>");
        } catch (Exception e) {
            out.print(e);
        }

    }
}
