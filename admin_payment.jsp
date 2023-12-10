<%-- 
    Document   : admin_payment
    Created on : 24 Apr, 2023, 5:21:23 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
        <style><%@include file="css/admin_payment.css" %></style>
    </head>
    <body>
        <div class="whitediv1">
            <table>
            <thead>
                
            
            <th>Name</th>
            <th>Card No.</th>
            <th>Month</th>
            <th>Year</th>
            <th>CVV</th>
            <th>Action</th>
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from payment ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
                
            <tr>
                
                <td><%= rs.getString("name")%></td>
                <td><%= rs.getString("cardno")%></td>
                <td><%= rs.getString("month")%></td>
                <td><%= rs.getString("year")%></td>
                <td><%= rs.getString("cvv")%></td>
                <td>Success</td>
                
                                  
            </tr>
            
            <%
                }
            %>
            
            </tbody>
        </table>
        </div>
       
    </body>
</html>
