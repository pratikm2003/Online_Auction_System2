<%-- 
    Document   : forgot_password
    Created on : 1 Feb, 2023, 1:42:47 PM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/forgot_password.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        
        <form name="forgot_password" action="forgot_password" method="post">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
            
        <div class="col-sm-8">
            <div class="whitediv">
                
            </div>
        </div>
        <div class="col-sm-4">
            <div class="whitediv1">
                <header class="myclass" value=""><b>Forgot Your Password..?</b><br>We are Here To Help......</header>
            <h3 class="font"> Enter Email</h3> <input class="textbox"  type="text" name="mail" placeholder="E-mail">
            <input class="link" type="submit" name="ssubmit" value="Send OTP"><br>    
            <h3 class="font"> Enter OTP</h3> <input class="textbox" type="text" onkeypress="return isNumber(event)" name="otp" placeholder="OTP"><br>
            <input class="button" type="submit" name="submit" value="verify"><br>
        </div> 
        </div>
        
        </form>
    </body>
</html>
