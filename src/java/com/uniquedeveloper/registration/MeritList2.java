package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.sql.*;  
import javax.servlet.annotation.WebServlet;
 
public class MeritList2 extends HttpServlet  
{    
    private static final long serialVersionUID = 1L;
    
    
    public MeritList2(){
        
    }
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
      {  
         response.getWriter().append("Served at: ").append(request.getContextPath());
 }  
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
      {  
         response.setContentType("meritlist2.jsp");
         PrintWriter out=response.getWriter();
         
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL=false", "root","root");
             
              PreparedStatement ps = con.prepareStatement("select education_detail.user,education_detail.cetmarks from education_detail where education_detail.cetmarks>=70 AND education_detail.cetmarks<85  order by education_detail.cetmarks DESC;");
              
              
                out.print("<table width=25% border=1>");
                    out.print("<h3>Merit List - 2 : </h3>");
                    
                    ResultSet rs = ps.executeQuery();
                    
                    ResultSetMetaData rsmd = rs.getMetaData();
                    int totalColumn = rsmd.getColumnCount();
                    out.print("<tr>");
             
                    for(int i=1; i<=totalColumn; i++) {
                        out.print("<th>"+rsmd.getColumnName(i)+"</th>");
                    }
                    
                    out.print("</tr>");
                    while(rs.next()) {
                        out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getInt(2)+"</td></tr>");
                    }
                    out.print("</table>");
         }catch(Exception e){
             out.print(e);
         }
         
         
         
         
         
         
         
 }  
}