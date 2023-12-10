<%-- 
    Document   : user_add_item
    Created on : 11 Mar, 2023, 11:13:53 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_add_item.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        <form name="user_add_item" action="user_add_item" method="post">
            
           <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
            
        <div class="whitediv">
        <h3 class="font">ADD ITEM</h3>
        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-3"><label class="lab">Product Name</label></div>
             <div class="col-sm-5"><input type="text" name="product_name" class="textbox" onkeypress="return isString(event)"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label class="lab">Made In</label></div>
            <div class="col-sm-5"><input type="text" name="made_in" class="textbox"></div>
        </div>
        
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label class="lab">Reserved Price</label></div>
            <div class="col-sm-5"><input type="text" name="reserved_price" class="textbox" onkeypress="return isNumber(event)"></div>
        </div>  
        
                <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label class="lab">Bid Increment</label></div>
            <div class="col-sm-5"><input type="text" name="bid_increament" class="textbox" onkeypress="return isNumber(event)"></div>
        </div>
        
         <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label class="lab">HIstorical Background</label></div>
            <div class="col-sm-5"><input type="text" name="histry" class="textbox1" onkeypress="return isString(event)"></div>
        </div>
        

        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-3"><label class="lab">Add Image</label></div>
             <div class="col-sm-5"><input type="file" name="add_image" class="textbox"></div>
        </div>
        <input class="button" type="submit" name="submit" value="Submit & Send Request">
        </div>
    
        </form>
    </body>
</html>
