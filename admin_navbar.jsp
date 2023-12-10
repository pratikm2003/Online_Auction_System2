<%-- 
    Document   : user_navbar
    Created on : 17 Mar, 2023, 11:36:12 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> <%@include file="css/admin_navbar.css" %> </style> 
    </head>
    <body>
         <nav class="navbar">
    <ul class="menu">
        <li>  <a href="#">Online Auction</a>  </li>
        <li>  <a href="admin_users_list.jsp">New User</a>  </li>
        <li>  <a href="admin_main_page_list.jsp">Product List</a> </li>
        <li>  <a href="add_item.jsp">Add Item</a> </li>
        <li>  <a href="user_request.jsp">Product Request</a> </li>
               <li>  <a href="bidders_list.jsp">Bidders List</a> </li>
        <li>  <a href="admin_win_bid.jsp">Win Bid</a> </li>
        <li>  <a href="contact.jsp">Feed Back</a> </li>
        <li>  <a href="shipping_pay.jsp">Shipping</a> </li>
        <li>  <a href="admin_payment.jsp">Payment</a> </li>
        <li>  <a href="report.jsp">Reports</a> </li>
        <li>  <a href="admin_login.jsp">LOGOUT</a> </li>
       
    </ul>
</nav> 
    </body>
</html>


