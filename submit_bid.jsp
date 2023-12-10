<%-- 
    Document   : submit_bid
    Created on : 3 Mar, 2023, 11:30:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/submit_bid.css"%></style>
    </head>
    <body>
        <div class="whitediv">
            <input class="font" type="text" name="price" value="150000"><br>
            <input class="textbox" type="text" name="name" placeholder="Name"><br>
            <input class="textbox" type="text" name="email" placeholder="Enter E-mail"><br>
            <input class="textbox" type="text" name="contactnumber" placeholder="Contact No."><br>
            <input class="button" type="submit" name="submit" value="SUBMIT"><br>
        </div>
    </body>
</html>
