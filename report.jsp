<%-- 
    Document   : report
    Created on : 11 May, 2023, 12:20:29 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="admin_navbar.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/report.css" %></style>
    </head>
    
    <body>
        <form name="report" action="Report_view.jsp" method="post">
            <div class="col-sm-6">
                <div class="whitediv">
                  
                    <input class="button" type="submit" name="submit" value="Addrerss Report"><br><br>
                    <input class="button" type="submit" name="submit" value="Payment Report"><br><br>
                    <input class="button" type="submit" name="submit" value="Place Bid Report"><br><br>
                    <input class="button" type="submit" name="submit" value="Product Detail Report"><br><br>
                    <input class="button" type="submit" name="submit" value="User Id Report"><br>
                </div>
                </div>             
      
        
        <div class="col-sm-6">
            <div class="whitediv1">
              
             <input class="textbox" type="text" name="id"><br><br>
             <input class="button1" type="submit" name="submit" value="User Detail">
             <input class="button2" type="submit" name="submit" value="Item Detail"><br>
             <input class="textbox" type="text" name="date"><br>
             <input class="button3" type="submit" name="submit" value="Item Detail Date Wise"><br>
                
            </div>       
         </div>
            
            
            
   
        </form>
    </body>
</html>
