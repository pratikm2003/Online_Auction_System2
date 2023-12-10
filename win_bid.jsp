<%-- 
    Document   : win_bid
    Created on : 13 May, 2023, 10:25:27 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/win_bid.css"%></style>
    </head>
    <body>
       <form name="win_bid" action="win_bid" method="post">
        <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
       <div class="whitediv1">
            <table>
            <thead>
                

            <th>User ID</th>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Win Bid Price</th>
            <th>Action</th>
                
            
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from place_bid where status='WIN' && user_id='"+session.getAttribute("user_id")+"'";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
             <form name="win_bid" action="win_bid" method="post">
            <tr>
            <input type="hidden" name="pid" value="<%= rs.getString("pid")%>">
            <input type="hidden" name="f_bid" value="<%= rs.getString("f_bid")%>">
              
                <td><%= rs.getString("user_id")%></td>
                <td><%= rs.getString("pid")%></td>
                <td><%= rs.getString("pname")%></td>
                <td><%= rs.getString("f_bid")%></td>
                <td><input type="submit" class="btn" name="submit" value="Shipping Address"></td>
                
                                  
            </tr>
             </form>
            <%
                }
            %>
            
            </tbody>
        </table>
        </div>
    </body>
</html>
