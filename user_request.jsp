<%-- 
    Document   : user_request
    Created on : 13 Apr, 2023, 10:05:40 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="admin_navbar.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_request.css" %></style>
    </head>
    <body>
        
        <div class="whitediv1">
            <table>
            <thead>
                
            <th>Product img</th>
            <th>Product Name</th>
            <th>Made In</th>
            <th>Reserved Price</th>
            <th>Bid Increment</th> 
            <th>Details</th>
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from add_item where product_status='Pending' ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
            <form action="user_request" name="user_request" method="post"> 
                
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
            
            <tr>
                <td><img src="image/<%= rs.getString("add_image")%>" style="height: 70px; width: 70px; border-radius: 50%;"></td>
                <td><%= rs.getString("prboduct_name")%></td>
                <td><%= rs.getString("made_in")%></td>
                <td><%= rs.getString("reserve_price")%></td>
                <td><%= rs.getString("bid_increse")%></td> 
                <td><input type="submit" class="btn" name="submit" value="View"></td>
                
                                  
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
