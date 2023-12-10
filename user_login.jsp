<%-- 
    Document   : user_login
    Created on : 31 Jan, 2023, 12:37:18 PM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_login.css"%></style>
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
        <form name="user_login" action="user_login" method="post">
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            <div class="whitediv">
       <div class="pic">
        
    </div>
                
        <input class="textbox" type="mail" name="mail" placeholder="Enter E-mail"><br>
        <input id="textbox" class="textbox" type="password" name="password" placeholder="Enter Password">
        <input class="chechbox" type="checkbox" id="mylable" onclick="myfun();"> 
        <label class="font" type="text">See Password</label>
    
             <input class="button" type="submit" name="submit" value="Login"><br>  
             <input class="link" type="submit" name="submit" value="Forget Password"><br>
             <input class="link" type="submit" name="submit" value="Create Account"><br>
            </div>   
        </form>
    </body>
</html>
