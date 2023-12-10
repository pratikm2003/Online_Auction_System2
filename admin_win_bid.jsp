<%-- 
    Document   : admin_win_bid
    Created on : 10 Apr, 2023, 2:31:46 PM
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
        <style><%@include file="css/admin_win_bid.css" %></style>
    </head>
    <body>
        <form name="admin_win_bid" action="admin_win_bid" method="post">    
            
        <div><input type="text" name="search" class="textbox" placeholder="Product Name">
            <input class="button" type="submit" name="submit" value="Search"></div>
            
        <div class="whitediv1">
            <table>
            <thead>
                
            <th>Sr.No</th>
            <th>Product Id</th>
            <th>Product Name</th>
            <th>User ID</th>
            <th>Win Price</th>
                
            
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from place_bid where status='WIN'";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
                    <form name="admin_win_bid" action="admin_win_bid" method="post">  
                   <input type="hidden" name="user_id" value="<%= rs.getString("user_id")%>">   
             
            <tr>
            <input type="hidden" name="pid" value="<%= rs.getString("pid")%>">
                
                <tr>

                    <td><%= rs.getString("b_id")%></td>
                     <td><%= rs.getString("pid")%></td>
                    <td><%= rs.getString("pname")%></td>
                    <td><%= rs.getString("user_id")%></td>
                    <td><%= rs.getString("f_bid")%></td>
                    

                </tr>
            
            <%
                }
            %>
            
            </tbody>
        </table>
        </div>
        </form>
    </body>
</html>
