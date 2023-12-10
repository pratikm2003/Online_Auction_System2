<%-- 
    Document   : saved
    Created on : 25 Apr, 2023, 3:15:26 PM
    Author     : ADMIN
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
        <style><%@include file="css/saved.css" %></style>
    </head>
    <body>
          <form name="saved" action="saved" method="post">
        <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
       
        <p><b>Saved Product</b></p>
        
        <div class="col-sm-10">
                        <div class="row">
              <%
                 
              
              
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                 String sql="select * from save_product where user_id='"+session.getAttribute("user_id")+"' ";
                                 ResultSet rs= st.executeQuery(sql);
                                  
                
                while(rs.next())
                {
                
            %> 
      
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
                <div class="col-sm-3">
                    
                  <div class="whitediv1"><br>
                      <button type="btn" name="submit" value="Delete" class="pic"></button>
                        <div class="whitediv2">
                            
                            <button type="submit" name="submit" value="submit" style="background-image:url('image/<%=rs.getString("add_image")%>')" class="pic1"></button>
                        </div>
                        <div><label class="font1"><%=rs.getString("prboduct_name")%> </label></div>
                  </div>
                  
                </div>
                
        </form>
            
            <%
                 }
            %>
            
            </div>
            </div>
            
        
    </body>
</html>
