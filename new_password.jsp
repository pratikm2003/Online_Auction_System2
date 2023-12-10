<%-- 
    Document   : new_password
    Created on : 2 Feb, 2023, 10:18:08 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/new_password.css" %></style>
        
    </head>
    <body>
        
        <form name="new_password" action="new_password" method="post">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
            
        <div class="whitediv">
            <header class="myclass" value=""><b>Just Reset Your Password</b></header>
            <header class="myclass1" value=""><br>So you won't forgrot it again.</header>
            <input class="textbox" type="email" name="password" placeholder="Enter Email"><br>
             <input class="textbox" type="password" name="epass" placeholder="enter Password">
            <input class="textbox" type="password" name="cpassword" placeholder="Confirm Password"><br>
            <input class="button" type="submit" name="submit" value="Confirm">
        </div>
            
        </form>
        
    </body>
</html>
