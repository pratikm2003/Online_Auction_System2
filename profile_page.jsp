<%-- 
    Document   : profile_page
    Created on : 21 Feb, 2023, 11:25:22 PM
    Author     : Sam
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/profile_page.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
        
    </head>
    <body>
        <form name="profile_page" action="profile_page" method="post">
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
                <label class="font"><b>My Profile</b></label><br><br><br>
                
                <label style="margin-left: 30px; font-size: 20px;"><%= rs.getString("name")%></label>
                
                <label style="margin-left: 30px; font-size: 20px;"><%= rs.getString("contact")%></label><br><br><br>
                
                <label style="margin-left: 30px; font-size: 20px;"><%= rs.getString("email")%></label><br><br>
               
                
                <input class="button" type="submit" name="submit" value="Edit">
                
                
            </div>
        </div>
            <%
                }
            %> 
        </form>
              
        
        
         <div class="col-sm-6">
            <div class="row"> 
                <div class="whitediv1">
                <label class="font"><b>My Payment Details</b></label><br>
             <%
                  
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                st=cn.createStatement(); 
                String q="select * from place_bid where user_id='"+session.getAttribute("user_id")+"' ";
                rs= st.executeQuery(q);
                
                while(rs.next()) 
                {
                
            %>      
                <label class="font1">Account No</label><br>
                <input type="text" name="card_name" class="textbox2" onkeypress="return isNumber(event)" value="6521 5500 3983 1491">
                            <% 
                } 
             %>
            </div> 
            </div>
            
            
            
            
            
            
            
            <div class="row"> 
               <div class="whitediv2" >
                   <label class="font" style="margin-left: 30px;"><b>Bidding History</b></label><br>
                   <label style="margin-left: 30px;font-size: 18px;">Old Terracotta statue </label>
               <label class="font2">win</label><br>
                
            </div> 
            </div>
            
        </div>
                
            
                      </form>  

    </body>
</html>
