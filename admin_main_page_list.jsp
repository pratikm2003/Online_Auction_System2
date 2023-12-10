<%-- 
    Document   : admin_main_page_list
    Created on : 16 Apr, 2023, 11:19:21 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="admin_navbar.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_main_page_list.css"%></style>
    </head>
    <body>
        <div class="whitediv1">
            <table>
            <thead>
                
            <th>Sr.No</th>
            <th>Product Img</th>
            <th>Product Name</th>
            <th>Product ID</th>
            <th>Action</th>
                
            
            
            </thead>
            <tbody>
            
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from add_item ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
            <form name="admin_main_page_list" action="admin_main_page_list" method="post">
            <tr>
                <input type="hidden" name="id" value="<%= rs.getString("id")%>">
                <td><%= rs.getString("id")%></td>
                <td><img src="image/<%= rs.getString("add_image")%>" style="height: 70px; width: 70px; border-radius: 50%;"</td>
                <td><%= rs.getString("prboduct_name")%></td>
                <td><%= rs.getString("id")%></td>
               
                
                <td><input type="submit" class="btn" name="" value="22:45:13">
                <input type="submit" class="btn" name="submit" value="Delete"></td>
                
                                  
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
