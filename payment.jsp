
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : payment
    Created on : 15 Feb, 2023, 11:17:36 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
                <style><%@include file="css/payment.css" %></style>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <script type="text/javascript" src="css/validation.js"></script>
                <script type="text/javascript">
                    function funclick(id)
                    {
                        
                        if(id==="id1")
                        { 
                            documemt.getElementById("card").style.display = "block";
                            documemt.getElementById("qr").style.display = "none";
                        }
                        else if(id==="id2")
                        {  
                            documemt.getElementById("card").style.display = "none";
                            documemt.getElementById("qr").style.display = "block";
                        }
                    };
                </script>
    </head>
    <body>
         <%
                 
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                  String sql="select * from place_bid where pid='"+session.getAttribute("pid") +"'";
                                  ResultSet rs= st.executeQuery(sql);
                
                while(rs.next())
                {
                
            %>
        
        <form name="payment" action="payment" method="post">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
            </div><br><br>
            
        
         <div class="row">
             
             
        
            <div class="whitediv" id="card" style="display: block;">
            <center><h3><b>Payment</b></h3></center>
            <center><label class="font"><b>Accepted Cards</b></label></center>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:red;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            
           
            <label>Name on Card</label>
            <input type="text" name="name" class="textbox" onkeypress="return isString(event)" placeholder="Pratik R. Mane"><br>
            <label >Credit card number</label>
            <input type="text" name="cardno" class="textbox" onkeypress="return isNumber(event)" placeholder="1111-2222-3333-4444"><br>
            <label >Amount</label>
            <center><input class="textbox2" type="text" name="amount"  onkeypress="return isNumber(event)" value="<%=session.getAttribute("f_bid")%>"disabled="true"></center><br>
             
            <label >Exp Month</label>
            <input type="text" name="month" class="textbox" onkeypress="return isString(event)" placeholder="September"><br>
              <div class="row">
              <div class="col-sm-6">
                <label >Exp Year</label>
                <input type="text" name="year" class="textbox1" onkeypress="return isNumber(event)" placeholder="2018"><br>
              </div>
              <div class="col-sm-6">
                <label>CVV</label>
                <input type="text" name="cvv" class="textbox1" onkeypress="return isNumber(event)" placeholder="352" style="margin-left: 30px;">
              </div>
            </div>
            
            
            
                <input type="submit" name="submit" value="Continue to checkout" class="btn">
        </div>
            
           
             
            
            <br>
            
            
            
        
        </form>
        
         <%
                }
            %>
        
    </body>
</html>
