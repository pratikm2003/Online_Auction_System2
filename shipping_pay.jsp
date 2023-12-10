<%-- 
    Document   : shipping_pay
    Created on : 24 Apr, 2023, 12:32:36 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
        <style><%@include file="css/shipping_pay.css" %></style>
    </head>
    <body>
        <div class="whitediv1">
            <table>
            <thead>
                
            
            <th>User Name</th>
            <th>Contact No.</th>
            <th>Pin Code</th>
            <th>Area</th>
            <th>Land Mark</th>
            <th>City</th>
            <th>State</th>
            <th>Address Type</th>
            
                
            
            
            </thead>
            <tbody>
                
                
           <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                    st=cn.createStatement(); 
                      String sql="select * from address ";
                    ResultSet rs= st.executeQuery(sql); 
                
                while(rs.next())
                {
                
            %>   
            
            <form name="admin_main_page_list" action="admin_main_page_list" method="post">
                <tr>
               
               
                <td><%= rs.getString("name")%></td>
                <td><%= rs.getString("contact_no")%></td>
                <td><%= rs.getString("pin_code")%></td>
                <td><%= rs.getString("area")%></td>
                <td><%= rs.getString("landmark")%></td>
                <td><%= rs.getString("town_city")%></td>
                <td><%= rs.getString("state")%></td>
                <td><%= rs.getString("address_type")%></td>
                
                                  
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
