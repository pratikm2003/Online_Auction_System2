<%-- 
    Document   : bidders_list1
    Created on : 5 May, 2023, 9:45:54 AM
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
        <style><%@include file="css/bidders_list1.css" %></style>
    </head>
    <body>
        <div><input type="text" name="search" class="textbox"  placeholder="Product Name">
            <input class="button" type="submit" name="submit" value="Search"></div>
        
        <div class="col-sm-8">
            <div class="whitediv1">
            <table>
            <thead>
            <th>Sr. No</th>
            <th>Customer ID</th>
            <th>Product Name</th>
            <th>Product Id</th>
            <th>Placed Bid</th>
            <th>Auction</th>
            </thead>
            <tbody>
            <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from place_bid where pname='"+session.getAttribute("search")+"' ";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>   
               <form name="bidders_list1" action="bidders_list1" method="post">  
                   <input type="hidden" name="user_id" value="<%= rs.getString("user_id")%>">
            <tr>
                
                <td><%= rs.getString("b_id")%></td>
                <td><%= rs.getString("user_id")%></td>
                <td><%= rs.getString("pname")%></td>
                <td><%= rs.getString("pid")%></td>
                <td><%= rs.getString("f_bid")%></td>
                <td><input type="submit" class="button1" name="submit" value="WIN"></td>
                
                
                                  
            </tr>
               </form>
            <%
                }
            %>
              
               
            
            
            </tbody>
        </table>
        </div>
        </div>
    </body>
</html>
