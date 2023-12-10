<%-- 
    Document   : ratings
    Created on : 10 Apr, 2023, 10:49:49 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/ratings.css" %></style>
    </head>
    <body>
        
        
        <div class="rating">
            <input type="radio" name="rate" id="rating-opt5" data-idx="0" hidden=>
            <label for="rating-opt5"><span>Very Satisfied</span></label>
            
            <input type="radio" name="rate" id="rating-opt4" data-idx="1" hidden=>
            <label for="rating-opt4"><span>Somewhere satisfied</span></label>
            
            <input type="radio" name="rate" id="rating-opt3" data-idx="2" hidden=>
            <label for="rating-opt3"><span> Neutral</span></label>
            
            <input type="radio" name="rate" id="rating-opt2" data-idx="3" hidden=>
            <label for="rating-opt2"><span>Dissatisfied</span></label>
            
            <input type="radio" name="rate" id="rating-opt1" data-idx="4" hidden=>
            <label for="rating-opt1"><span>Very Dissatified</span></label>
        </div>
    </body>
</html>
