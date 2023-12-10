<%-- 
    Document   : shipping_address
    Created on : 18 Feb, 2023, 8:36:14 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/shipping_address.css" %></style>
        <script type="text/javascript" src="css/validation.js"></script>
        
    </head>
    <body>
        
        <form name="shipping_address" action="shipping_address" method="post">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
        <div class="whitediv">
            <label>Name </label><br>
            <input type="text" name="name" class="textbox"onkeypress="return isString(event)"><br>
            <label>Contact No.</label><br>
            <input type="text" name="contact" class="textbox" onkeypress="return isNumber(event)"><br>
            <label>Pin Code</label><br>
            <input type="text" name="pincode" class="textbox" placeholder="6 digit[0-9]Pin Code" onkeypress="return isNumber(event)"><br>
            <label>Flat,House no. / Building, Apartment</label><br>
            <input type="text" name="houseno" class="textbox"><br>
            <label>Area,Street</label><br>
            <input type="text" name="area" class="textbox" onkeypress="return isString(event)"><br>
            <label>Landmark</label><br>
            <input type="text" name="landmark" class="textbox" placeholder="E.g. near Code Expert Classes" onkeypress="return isString(event)"><br>
            <label>Town/City</label><br>
            <input type="text" name="city" class="textbox" onkeypress="return isString(event)"><br>
            <label>State</label><br>
            <select name="States" class="textbox">
            <option>Select</option>
            <option value="Maharashtra" >Maharashtra</option>
            <option value="Goa">Goa</option>
            <option value="Gujarat">Gujarat</option>
            <option value="Zarkhand">Zarkhand</option>
            <option value="West_Bengal">west Bengal</option>
            <option value="Punjab">Punjab</option>
            <option value="Kerala">Kerala</option>
                </select>
            <input Class="font" type="text" value="Deliery Instruction"><br>
            <p>Preferences are used to plan your delivery. However, shipments can sometimes arrive early or later than planned.</p><br>
            <label >Address Type</label><br>
            <select name="Address_time" class="textbox">
                <option value="home">Home [8:00 AM to 9:00 PM]</option>
                <option value="office">Office [10:00 AM to 6:00 PM]</option>
            </select><br><br>
            <input type="checkbox" name="checkbox" class="checkbox">Not allowed Return
            <input class="button" type="submit" name="submit" value="Place Order">
        </div>    
        </form>
    </body>
</html>
