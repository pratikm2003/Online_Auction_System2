<%-- 
    Document   : bidding
    Created on : 30 Jan, 2023, 3:55:40 PM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/add_item.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        
        <form name="add_item" action="add_item" method="post">
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
            <div class="col-sm-5"><input type="text" name="Bid_increament" class="textbox" onkeypress="return isNumber(event)"></div>
        </div>
        
         <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label class="lab">HIstorical Background</label></div>
            <div class="col-sm-5"><input type="text" name="Histry" class="textbox1" onkeypress="return isString(event)"></div>
        </div>
        

        
        <div class="row">
            <div class="col-sm-1"></div>
             <div class="col-sm-3"><label class="lab">Add Image</label></div>
             <div class="col-sm-5"><input type="file" name="add_image" class="textbox"></div>
        </div>
        <input class="button" type="submit" name="submit" value="Submit">
        
        </form>
</html>
</body>