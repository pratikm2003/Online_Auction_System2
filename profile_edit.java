/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class profile_edit extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String name = req.getParameter("name");
        String contact = req.getParameter("contact");
        String mail = req.getParameter("mail");
        String event = req.getParameter("submit");
        
        out.println(name);
        out.println(contact);
        out.println(mail);
        out.println(event);
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
    
        
        if(event.equals("Save"))
        {
            if(name.equals("")||contact.equals("")||mail.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'profile_edit.jsp'");
                out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                     String update=db.update("update new_user set  contact='"+contact+"' , email='"+mail+"' where name='"+name+"'            ");
                     out.println(update);
                     
                     
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Profile Edited')");
                out.println("location = 'profile_page.jsp'");
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
            resp.sendRedirect("profile_page.jsp");
        }
        
         
    }
    
     
}