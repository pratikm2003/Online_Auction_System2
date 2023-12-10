<%-- 
    Document   : contact_us
    Created on : 4 May, 2023, 12:16:50 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style><%@include file="css/contact_us.css" %></style>
    </head>
   <body>
        <form name="contact_us" action="contact_us" method="post">
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
           <div class="whitediv">
            <center><b><lable class="h">Contact Us</lable></b></center>
            <div class="col-sm-6">
            <br><br>
            <label class="label">Enter Your Name:-</label>
            <br>
            <input class="textbox"  type="text" name="name" placeholder="">
            <br><br>
            <label class="label">Email Address:-</label>
            <br>
            <input class="textbox"  type="text" name="mail" placeholder="">
            <br><br>
            <label class="label">Message:-</label>
            <br>
            
            <input type="text" class="textbox1"  name="message">
            
            <br><br>
            
           <input  class="button" type="submit" name="submit" value="Submit">
 
       
           </div>
           </div>
        </form>
    </body>
</html>
