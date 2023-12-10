<%-- 
    Document   : place_bid
    Created on : 13 Feb, 2023, 12:41:22 PM
    Author     : Sam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/place_bid.css" %></style>
        
         <script>
    function updateTimer() {
      var hoursElement = document.getElementById("hours");
      var minutesElement = document.getElementById("minutes");
      var secondsElement = document.getElementById("seconds");

      var hours = parseInt(hoursElement.innerHTML);
      var minutes = parseInt(minutesElement.innerHTML);
      var seconds = parseInt(secondsElement.innerHTML);

      seconds--;

      if (seconds < 0) {
        seconds = 59;
        minutes--;
      }

      if (minutes  < 0) {
        minutes = 59;
        hours--;
      }

      hoursElement.innerHTML = ('0' + hours).slice(-2);
      minutesElement.innerHTML = ('0' + minutes).slice(-2);
      secondsElement.innerHTML = ('0' + seconds).slice(-2);
    }

    setInterval(updateTimer, 1000);
  </script>
  
    </head>
    <body>
        <form name="place_bid" action="place_bid" method="post">
        
        <%
                 
              String id=""; 
              String prboduct_name="";  long reserve_price1 = 0; long bid_increse1 = 0;
              String reserve_price="";  
        
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                 String sql="select * from add_item where id='"+session.getAttribute("id")+"' ";
                                 ResultSet rs= st.executeQuery(sql);
                                  
                
                while(rs.next())
                {
                    reserve_price1 = Long.parseLong(rs.getString("reserve_price"));
                    bid_increse1 = Long.parseLong(rs.getString("bid_increse"));
            %> 
            
             <input type="hidden" name="add_image" value="<%=rs.getString("add_image")%>">
             <input type="hidden" name="made_in" value="<%=rs.getString("made_in")%>">
             <input type="hidden" name="history" value="<%=rs.getString("history")%>">
             <input type="hidden" name="id" value="<%=rs.getString("id")%>">
             <input type="hidden" name="prboduct_name" value="<%=rs.getString("prboduct_name")%>">
             <input type="hidden" name="bid_increse" value="<%=rs.getString("bid_increse")%>">
             <input type="hidden" name="reserve_price" value="<%=rs.getString("reserve_price")%>">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
            
        <div class="row">
            <div class="col-sm-7">
                <div class="whitediv">
                    <div class="pic" style="background-image: url('image/<%=rs.getString("add_image")%>')">
                        <label class="Font3" type="text" value="Time Left">Time Left</label><br><br>
                        <label class="timer">Hours :</label>
                        <label class="timer" id="hours">48</label><br>
                        <label class="timer">Minutes :</label>
                        <label class="timer" id="minutes">30</label><br>
                        <label class="timer">Seconds :</label>
                        <label class="timer" id="seconds">00</label><br>
                    </div>
                    
                    
                    
                </div>
                
            </div>  
            <div class="col-sm-4">
                <div class="whitediv1">
                    <div class="pic11"><input class="button2" type="submit" name="submit" value="Save"> </div><br>
                    <p >Product Name - <%=rs.getString("prboduct_name")%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reseve Price - <%=rs.getString("reserve_price")%>  <br><br>
                        
                        Made In - <%=rs.getString("made_in")%> <br> History - <br>
                        <textarea style="height: 350px; width: 500px; background-color:  black;" disabled=""><%=rs.getString("history")%></textarea>  <br>
                            <b>_________________________________________</b></p>
                    
                <%
                  
                    long current_bid = reserve_price1 ;
                    long nextbid = reserve_price1+bid_increse1;
                    
                    Connection cn1=null;
                    Statement st1=null;

                    Class.forName("com.mysql.jdbc.Driver");
                    cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                    st1=cn1.createStatement();

                    String sql1="select * from place_bid where pid='"+session.getAttribute("id") +"'  ";
                    ResultSet rs1= st1.executeQuery(sql1); 
                    while(rs1.next())
                    {
                              current_bid = Long.parseLong(rs1.getString("f_bid"));  
                              nextbid = Long.parseLong(rs1.getString("s_bid"));
                    }

                  %> 
                  <input type="hidden" name="current_bid_price" value="<%=current_bid%>">
                  <input type="hidden" name="next_bid_price" value="<%=nextbid%>"> 
                <label ><%=current_bid%></label>
                <label1  name="nextbid"><%=nextbid%></label1><br> 
                <input class="button" type="submit" value="Place Bid" name="submit">
                </div>
            </div>
        </div>   
            
        </form>
            
            <%
                  }
            %>
    </body>
</html>
