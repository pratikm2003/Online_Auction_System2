<%-- 
    Document   : profile_edit
    Created on : 7 Apr, 2023, 10:59:58 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/profile_edit.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        
        <form name="profile_edit" action="profile_edit" method="post">
        
        <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
        
        
        <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                 String sql="select * from new_user where id='"+session.getAttribute("user_id") +"' ";
                                 ResultSet rs= st.executeQuery(sql);
                                  
                
                while(rs.next())
                {
                
            %> 
        
        
        
        
        
        <div class="col-sm-6">
            <div class="whitediv">
                <div class="pic"></div>
                <label class="font"><b>My Profile</b></label><br>
                <input type="text" name="name" class="textbox" onkeypress="return isString(event)" value="<%= rs.getString("name")%>">
                <input type="text" name="contact" class="textbox" onkeypress="return isNumber(event)" value="<%= rs.getString("contact")%>"><br>
                <input type="text" name="mail" class="textbox1" value="<%= rs.getString("email")%>">
                
                <input class="button" type="submit" name="submit" value="Save">
                
                
            </div>
        </div>
            <%
                }
            %> 
                
             
        </form>     
             
    </body>
</html>
