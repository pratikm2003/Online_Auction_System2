<%-- 
    Document   :admin_login
    Created on : 28 Jan, 2023, 11:21:38 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_login.css"%></style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            function myfun ()
            {
                var mode= document .getElementById('textbox').type;
                if(mode==='password')
                    {
                        document .getElementById('textbox') .type='text'
                    }
                    else
                        {
                            document .getElementById('textbox') .type='password';
                        }
            }
        </script>
        
    </head>
    <body> 
        
        <form name="admin_login" action="admin_login" method="post">
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
        <div class="whitediv">
    <div class="pic">
    </div>
            <input class="textbox" type="text" name="mail" placeholder="Enter E-mail"><br>
            <input class="textbox" id="textbox" type="password" name="password" placeholder="Enter Password">
            <input class="chechbox" type="checkbox" id="mylable" onclick="myfun();"> 
            <label class="font" type="text">See password</label>
    
            <input class="button" type="submit" name="submit" value="Login"><br>
            <input class="link" type="submit" name="submit" value="Forget Password">
            <input class="link" type="submit" name="submit" value="Create Account">
        </div>
        </form>
    </body>
</html>