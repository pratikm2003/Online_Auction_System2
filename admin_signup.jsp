<%-- 
    Document   : admin_signup
    Created on : 1 Mar, 2023, 11:44:50 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_signup.css"%></style>
        <script type="text/javascript" src="css/validation.js"></script>
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
            
             function myfun1 ()
            {
                var mode= document .getElementById('textbox1').type;
                if(mode==='password')
                    {
                        document .getElementById('textbox1') .type='text'
                    }
                    else
                        {
                            document .getElementById('textbox1') .type='password';
                        }
            }
        </script>
        
    </head>
    <body>
        
        <form name="admin_signup" action="admin_signup" method="post">
            
        <div class="whitediv">
            
            <h3 class=" font"><b>SIGN UP</b></h3>
            
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">Name :</label></div> 
            <div class="col-sm-5"><input type="text" name="name" class="textbox" onkeypress="return isString(event)" placeholder=""></div>
            </div>
            
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">User Name :</label></div> 
            <div class="col-sm-5"><input type="text" name="username" class="textbox" onkeypress="return isString(event)" placeholder=""></div>
                </div>
        
    
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">E-mail :</label></div> 
            <div class="col-sm-5"><input type="text" name="email" class="textbox" placeholder=""></div>
            </div>
            
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">Contact :</label></div> 
            <div class="col-sm-5"><input type="text" name="contact" class="textbox"onkeypress="return isNumber(event)" placeholder=""></div>
            </div>
            
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">Password :</label></div> 
            <div class="col-sm-5"><input type="password" name="password" class="textbox" placeholder="" id="textbox">
            <input class="chechbox" type="checkbox" id="mylable" onclick="myfun();"> 
            <label class="font1" type="text">See password</label>
            </div>
            </div>
            
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">Confirm Password :</label></div> 
            <div class="col-sm-5"><input type="password" name="confermpassword" class="textbox" placeholder="" id="textbox1">
            <input class="chechbox" type="checkbox" id="mylable" onclick="myfun1();"> 
            <label class="font1" type="text">See password</label></div>
            </div>
            
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">Address :</label></div> 
            <div class="col-sm-5"><input type="text" name="address" class="textbox" placeholder=""></div>
            </div>
    
            <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">D.O.B :</label></div> 
            <div class="col-sm-5"><input type="date" name="dob" class="textbox" placeholder=""></div>
            </div>
            
            
            
            <input class="button" type="submit" name="submit" value="SUBMIT"> 
    </div>
        </form>
    </body>
</html>
