<%-- 
    Document   : payment_success
    Created on : 11 May, 2023, 11:54:36 PM
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
        <style><%@include file="css/payment_success.css" %></style>
    </head>
    <body>
        <form name="payment_success" action="payment_success" method="post">
        <div class="whitediv">
            <div class="pic1"><input class="button1" type="submit" name="submit" value="Back"> </div>
            <div class="pic"></div>
 
           </div>
            
            
             <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from place_bid where pid='"+session.getAttribute("pid") +"'";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>
            
          <label class="font"><b><%= rs.getString("f_bid")%></b></label>
          <label class="font1"><b> - Payment Success</b></label>
          
           <%
                }
            %>
            
        </form>
    </body>
</html>
