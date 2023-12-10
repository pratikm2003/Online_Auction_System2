/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class admin_login extends HttpServlet 
{

    Connection cn = null;
    Statement st = null;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    
    {
        PrintWriter out=resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String mail =req.getParameter("mail");
        String password=req.getParameter("password");
        String event=req.getParameter("submit");
        
        out.print(mail);
        out.print(password);
        out.print(event);
        
        
        
        Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
        
        if(event.equals("Login"))
         {
             
                          if(mail.equals("")||password.equals(""))
                          {
                              //out.println("some fields are empty");
                              
                              resp.setContentType("text/html");
                              out.println("<script type = 'text/javascript'>");
                              out.println("alert('Some Record Are Empty')");
                              out.println("location = 'admin_login.jsp'");
                              out.println("</script>");
                          }
                          else
                          {
                              try
                              {
                                 Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                                  Statement st=cn.createStatement();
 
                                  String sql="select * from admin_signup where email='"+mail+"'&& password='"+password+"' ";
                                  ResultSet rs= st.executeQuery(sql);

                              
                              if(rs.next())
                              {
                                  
                                  session.setAttribute("email", rs.getString("email"));
                                  session.setAttribute("password",rs.getString("password"));
                                  
                                  
                                  
                                  
                                  resp.sendRedirect("admin_users_list.jsp");
                              }
                              else
                              {
                                  //out.println("login failed");
                                  
                                  resp.setContentType("text/html");
                                  out.println("<script type = 'text/javascript'>");
                                  out.println("alert('Login Faild')");
                                  out.println("location = 'admin_login.jsp'");
                                  out.println("</script>");
                              }
                              }
                          
                               catch(Exception ex)
                              {
                                  out.println(ex.toString());
                              }
                          }
         
         }
        
        
        if(event.equals("Forget Password"))
        {
            resp.sendRedirect("admin_new_password.jsp");
        }
        
        if(event.equals("Create Account"))
        {
            resp.sendRedirect("admin_signup.jsp");
        }
        
        if(event.equals("Back"))
        {    
            resp.sendRedirect("home_page.jsp");
        }
        
    }
}

