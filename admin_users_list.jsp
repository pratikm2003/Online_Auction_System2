<%-- 
    Document   : bidders_list
    Created on : 17 Feb, 2023, 7:40:49 PM
    Author     : Sam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_users_list.css" %></style>
    </head>
    <body>                                      
         
       
            <div class="whitediv1">
            <table>
            <thead>
                
            <th>Profile Pic</th>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Username</th>
            <th>Email</th>
            
            <th>Contact</th>
           
            <th>DOB</th>
            <th>Gender</th>
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from new_user ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
                
            <tr>
                <td><img src="image/<%= rs.getString("profilepic")%>" style="height: 70px; width: 70px; border-radius: 50%;"</td>
                <td><%= rs.getString("id")%></td>
                <td><%= rs.getString("name")%></td>
                <td><%= rs.getString("username")%></td>
                <td><%= rs.getString("email")%></td>
                <td><%= rs.getString("contact")%></td>
                
                <td><%= rs.getString("dob")%></td>
                <td><%= rs.getString("gender")%></td>
                
                                  
            </tr>
            
            <%
                }
            %>
            
            </tbody>
        </table>
        </div>
       
    </body>
</html>