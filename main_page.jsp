<%-- 
    Document   : home_page1
    Created on : 4 Feb, 2023, 4:33:28 PM
    Author     : Sam
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
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style><%@include file="css/main_page.css" %></style>
    </head>
    <body>
        
        <form name="main_page" action="main_page" method="post">
        
        <div class="whitediv3">
            
            <div class="pic16"></div>
            <input class="button1" type="submit" name="submit" value="Sell">
            
            <i class="fa fa-bell-o" aria-hidden="true">
             <input class="button2" type="submit" name="submit" value="Alert">   
            </i>
            <header class="myclass" value=""><b>Sell</b></header>
        </div>
       
            
        <div class="col-sm-2">
                <div class="whitediv">
                    <div class="pic"></div>
                    
                    
                    <center><input class="textbox" type="text" name="user_name" placeholder="Name" value="<%=session.getAttribute("username")%>" disabled="true"></center>  
                    <center><input class="textbox" type="text" name="customer_ID" placeholder="Costumer ID" value="<%=session.getAttribute("user_id")%>" disabled="true"></center> 
                    <input  class="button" type="submit" name="submit" value="Saved Products"><div class="pic11"></div><br>
                    <input class="button" type="submit" name="submit" value="Profile & Settings"><div class="pic12"></div><br>
                    <input class="button" type="submit" name="submit" value="Invite Friends"><div class="pic13"></div><br>
                    <input class="button" type="submit" name="submit" value="My Win Bid"><div class="pic18"></div><br>
                    <input class="button" type="submit" name="submit" value="Ratings"><div class="pic14"></div><br>
                    <input class="button" type="submit" name="submit" value="Contact Us"><div class="pic17"></div><br>
                    <input class="button" type="submit" name="submit" value="Logout"><div class="pic15"></div><br>
                    <div class="pic2"></div>
                </div>             
        </div>
                
        </form>
                    
                    <div class="col-sm-10">
                        <div class="row">
              <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                 String sql="select * from add_item where product_status != 'Pending' ";
                                 ResultSet rs= st.executeQuery(sql);
                                  
                
                while(rs.next())
                {
                
            %> 
        <form name="main_page" action="main_page" method="post">
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <div class="col-sm-3">
                  <div class="whitediv1"><br>
                        <div class="whitediv2">
                            
                            <button type="submit" name="submit" value="submit" style="background-image:url('image/<%=rs.getString("add_image")%>')" class="pic1"></button>
                        </div>
                        <div><label class="font1"><%=rs.getString("prboduct_name")%> </label></div>
                  </div>
                </div>
                
        </form>
            
            <%
                 }
            %>
            
            </div>
            </div> 
      </form>
    </body>
</html>
