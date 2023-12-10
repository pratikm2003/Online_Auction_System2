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
public class admin_signup extends HttpServlet 
{
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String contact = req.getParameter("contact");
        String password = req.getParameter("password");
        String confirmpassword = req.getParameter("confermpassword");
        String address = req.getParameter("address");
        String dob = req.getParameter("dob");
         String event=req.getParameter("submit"); 
       
        out.println(name);
        out.println(username);
        out.println(email);
        out.println(contact);
        out.println(password);
        out.println(confirmpassword);
        out.println(address);
        out.println(dob);
        out.println(event);
        
         Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
      
       if(event.equals("SUBMIT"))
        {
            if(name.equals("")||username.equals("")||email.equals("")||contact.equals("")||password.equals("")||confirmpassword.equals("")||address.equals("")||dob.equals(""))
            {
                //out.println("Some record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'admin_signup.jsp'");
                out.println("</script>");
            }
            else
            {
               if(password.equals(confirmpassword)) 
               {
                   try
                {
                    String sql ="insert into admin_signup(name, username, email, contact, password, confirmpassword, address, dob)values('"+name+"','"+username+"','"+email+"','"+contact+"','"+password+"','"+confirmpassword+"','"+address+"','"+dob+"')";
                    String insert=db.Insert(sql);
                    out.println(insert);
                    resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Record Inserted Successfully')");
                out.println("location = 'admin_login.jsp'");
                out.println("</script>");
                    
                    if(event.equals("SUBMIT"))
                     {
                         resp.sendRedirect("admin_login.jsp");
                      }
                        
                }
                   catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                    
                }
               }
                
            else
       {
           out.println("password and confirm password are not same");
           resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Password And ConConfirm Password')");
                out.println("location = 'admin_login.jsp'");
                out.println("</script>");
       }
            }
       
    }
    

   
}
}



    

        
        
        
