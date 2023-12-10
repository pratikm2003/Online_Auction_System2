<%-- 
    Document   : contact
    Created on : 11 May, 2023, 10:12:32 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="admin_navbar.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/contact.css" %></style>
    </head>
    <body>
        
         <div class="whitediv1">
            <table>
            <thead>
                
            
            <th>Name</th>
            <th>E-Mail</th>
            <th>Message</th>
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from contact_us ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
                
            <tr>
                
                <td><%= rs.getString("name")%></td>
                <td><%= rs.getString("mail")%></td>
                <td><%= rs.getString("message")%></td>
                               
            </tr>
            
            <%
                }
            %>
            
            </tbody>
        </table>
        </div>
       

    </body>
</html>
