/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class contact_us extends HttpServlet
{
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
       
       HttpSession session = req.getSession();
        String name =req.getParameter("name");
        String mail =req.getParameter("mail");
        String message = req.getParameter("message");
        String event = req.getParameter("submit");
        
       
        out.println(name);
        out.println(mail);
        out.println(message);
        out.println(event);
        
         Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
      
         
        
        if(event.equals("Submit"))
        {
            if(name.equals("")||mail.equals("")||message.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'contact_us.jsp'");
                out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                    String sql="insert into contact_us(name, mail, message)values('"+name+"','"+mail+"','"+message+"')";
                    
                    String insert=db.Insert(sql);
                    out.println(insert);
                    resp.setContentType("text/html");
                    out.println("<script type = 'text/javascript'>");
                    out.println("alert('Thanks for the contacting..')");
                    out.println("location = 'main_page.jsp'");
                    out.println("</script>");
                    
                    
                }
                
                    catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                     
                    
                }
                
                
            }
            
        }
        if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
    }
    
    
}