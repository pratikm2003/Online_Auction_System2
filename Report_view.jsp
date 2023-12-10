<%-- 
    Document   : Report_view
    Created on : 13 May, 2023, 11:32:29 AM
    Author     : ADMIN
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                
                 String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Addrerss Report"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\address.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }

                
                
                
                
                
           if(event.equals("Payment Report"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\payment.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }

              if(event.equals("Place Bid Report"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\place_bid.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
            
            
            if(event.equals("Product Detail Report"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\product_detail.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
            if(event.equals("User Id Report"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\user_id.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
                       else{
                
             if(event.equals("User Detail"))
           {
              String date1=request.getParameter("id");
              out.println(date1); 
         
              Connection cn = null;
              try 
              {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
          
              } 
              catch (Exception ex) 
              {
                ex.printStackTrace();
              }
              
                File reportFile = new File(application.getRealPath("Report\\id_wise_user_list.jasper"));//your report_name.jasper file
                HashMap parameters = new HashMap();
                parameters.put("id", date1);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close(); 
           }
             
               if(event.equals("Item Detail"))
           {
              String date1=request.getParameter("id");
              out.println(date1); 
         
              Connection cn = null;
              try 
              {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
          
              } 
              catch (Exception ex) 
              {
                ex.printStackTrace();
              }
              
                File reportFile = new File(application.getRealPath("Report\\id_wise_add_item.jasper"));//your report_name.jasper file
                HashMap parameters = new HashMap();
                parameters.put("id", date1);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close(); 
           }
             
             
              if(event.equals("Item Detail Date Wise"))
           {
               String date1= request.getParameter("date");
             
               out.println(date1); 
         
              Connection cn = null;
              try 
              {
                Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
          
              } 
              catch (Exception ex) 
              {
                ex.printStackTrace();
              }
              
                File reportFile = new File(application.getRealPath("Report\\date_wise_add_item.jasper"));//your report_name.jasper file
                HashMap parameters = new HashMap();
                parameters.put("id", date1);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close(); 
           }
                         }
                       }
    
                
                
        %>
        
        
    </body>
</html>
