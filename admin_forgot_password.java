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
public class admin_forgot_password extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String mail = req.getParameter("mail");
        String otp = req.getParameter("otp");
        String event = req.getParameter("submit");
        
        out.println(mail);
        out.println(otp);
        out.println(event);
        
        Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
        
    if(event.equals("verify"))
        {
            if(mail.equals("")||otp.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'admin_forgot_password.jsp'");
                out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                    String sql="insert into address(mail, otp)values('"+mail+"','"+otp+"')";
                    
                    String insert=db.Insert(sql);
                    out.println(insert);
                    
                    if(event.equals("verify"))
                     {
                         resp.sendRedirect("admin_new_password.jsp");
                      }
                    
                }
                
                    catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                    
                }
                
                
            }
            
        }
            if(event.equals("Back"))
        {    
            resp.sendRedirect("admin_login.jsp");
        }
         
    }
    
     
}

    