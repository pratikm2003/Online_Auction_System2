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
public class new_password extends HttpServlet 
{

    Connection cn = null;
    Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String password = req.getParameter("password");
        String epass = req.getParameter("epass");
        String cpassword = req.getParameter("cpassword");
        String event = req.getParameter("submit");
        
        out.println(password);
        out.println(cpassword);
        out.println(event);
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
    
        
        if(event.equals("Confirm"))
        {
            if(password.equals("")||cpassword.equals("")||epass.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'new_password.jsp'");
                out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                    String sql="update  new_user set password='"+cpassword+"',confirmpassword='"+epass+"' where email='"+password+"' ";
                    String update = db.update(sql);
                    out.println(update);
                    
                        resp.setContentType("text/html");
                        out.println("<script type = 'text/javascript'>");
                        out.println("alert('New Password Successfully')");
                        out.println("location = 'user_login.jsp'");
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
                resp.sendRedirect("user_login.jsp");
            }

         
    }
    
     
}