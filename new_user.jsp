<%-- 
    Document   : new_user
    Created on : 31 Jan, 2023, 1:28:28 PM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/new_user.css"%></style>
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
        
        <form name="new_user" action="new_user" method="post"> 
        
        <div class="col-sm-6 box">
            <div class="whitediv">
                <label>
                    <b> Online Auction System.<br>
                    
                        _________________________________________________<br><br><br>
                </label>

                <b>About System</b><br>

In Our System You Have Ability to Sell and Submit a Sessions For Your Products beside the Features That Our System reserve as 'See Bidders Details' that Subd for Your Product

In Addition, You are a Bidder You Can Submit Bids and You Will Notify for all events about Your Submitted Bids.<br><br><br><br><br><br><br>
<b>Admin</b><br>
Mr. Pratik Mane.<br>Mr. Shubham Kadam.

                </p>
            </div>
        </div>
            
            <div class="col-sm-6">
                <div class="whitediv1">
                    <h3 class="font">Sign In</h3>
        <div class="pic"> 
    </div>
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Name :</label></div>
             <div class="col-sm-5"><input type="text" name="name" class="textbox" onkeypress="return isString(event)"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4"><label class="myclass">User Name :</label></div>
            <div class="col-sm-5"><input type="text" name="username" class="textbox" onkeypress="return isString(event)"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">E-mail :</label></div>
             <div class="col-sm-5"><input type="mail" name="email" class="textbox"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Contact :</label></div>
             <div class="col-sm-5"><input type="text" name="contact" class="textbox" onkeypress="return isNumber(event)"></div>
        </div>
                    
         <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">D.O.B :</label></div>
             <div class="col-sm-5"><input type="date" name="dob" class="textbox"></div>
        </div>
        
         <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Password :</label></div>
             <div class="col-sm-5"><input type="password" name="confermpassword" class="textbox" placeholder="" id="textbox1">
            <input class="chechbox" type="checkbox" id="mylable" onclick="myfun1();"> 
            <label class="font1" type="text">See password</label></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Confirm Password:</label></div>
             <div class="col-sm-5"><input type="password" name="password" class="textbox" placeholder="" id="textbox">
            <input class="chechbox" type="checkbox" id="mylable" onclick="myfun();"> 
            <label class="font1" type="text">See password</label>
            </div>
        </div>
        
         <div class="row">
             <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Gender :</label></div>
             <input type="radio" name="gender" value="male" ><label>Male</label>
             <input type="radio" name="gender" value="female" ><label>Female</label>
             <input type="radio" name="gender" value="other" ><label>Other</label>
         </div>
                    
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-4"><label class="myclass">Profile picture :</label></div>
             <div class="col-sm-5"><input type="file" name="profilepic" class="textbox"></div>
        </div>            
                    
        <input class="button" type="submit" name="submit" value="Sign In">
        <p>_______________________________________________ </p>
        <input class="button1" type="submit" name="submit" value="Already Have an Account?">
                </div>
            </div>
        
        </form>
    </body>
</html>
