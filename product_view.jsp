<%-- 
    Document   : product_view
    Created on : 18 Apr, 2023, 10:59:52 AM
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
        <style><%@include file="css/product_view.css" %></style>
    </head>
    <body>
        <%
                 String product_status="";
                  Connection cn=null;
                  Statement st=null;
                  
                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  st=cn.createStatement();
 
                                 String sql="select * from add_item where id='"+session.getAttribute("id") +"' ";
                                 ResultSet rs= st.executeQuery(sql);
                                  
                
                while(rs.next())
                {
                product_status=rs.getString("product_status");
            %> 
            
        <form name="product_view" action="product_view" method="post">
         <input type="hidden" name="id" value="<%=rs.getString("id")%>">
         <input type="hidden" name="product_status" value="<%=rs.getString("product_status")%>">
            
            <div class="pic20">
            <input class="button20" type="submit" name="submit" value="Back"> 
        </div>
            
            
        <div class="row">
            <div class="col-sm-7">
                <div class="whitediv">
                    <div class="pic" style="background-image: url('image/<%=rs.getString("add_image")%>')">
                        
                    
                    </div><br>
                    
                    
                    
                </div>
                
            </div>  
            <div class="col-sm-5">
                <div class="whitediv1">
                    
                    <p >Product Name - <%=rs.getString("prboduct_name")%><br><br>
                        
                        Made In - <%=rs.getString("made_in")%> <br><br>
                        History - <%=rs.getString("history")%> <br>
                            <b>____________________________________________</b></p>
 
                
                <input type="submit" class="btn" name="submit" value="Accept">
                <input type="submit" class="btn" name="submit" value="Delete"><br>
                </div>
            </div>
        </div>   
            
        </form>
            
            <%
                           }
            %>
    </body>
</html>
