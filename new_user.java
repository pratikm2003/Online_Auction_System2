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
public class new_user extends HttpServlet
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
        String dob = req.getParameter("dob");
        String password = req.getParameter("password");
        String confirmpassword = req.getParameter("confermpassword");
        String gender = req.getParameter("gender");
        String profilepic = req.getParameter("profilepic");
        String event=req.getParameter("submit");
       
        out.print(name);
        out.print(username);
        out.print(email);
        out.print(contact);
        out.print(dob);
        out.print(password);
        out.print(confirmpassword);
        out.println(gender);
        out.print(profilepic);
        out.println(event);
        
         Database db = new Database();
         String result =db.Connectdb();
         out.println(result);
        
       
        if(event.equals("Sign In"))
        {
            if(name.equals("")||username.equals("")||email.equals("")||contact.equals("")||dob.equals("")||password.equals("")||confirmpassword.equals("")||gender.equals("")||profilepic.equals(""))
            {
                //out.println("Some record Are Empty");
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'new_user.jsp'");
                out.println("</script>");

            }
            else
            {
                try
                {
                    String sql ="insert into new_user(name,username,email,contact,dob,password,confirmpassword,gender,profilepic)values('"+name+"','"+username+"','"+email+"','"+contact+"','"+dob+"','"+password+"','"+confirmpassword+"','"+gender+"','"+profilepic+"')";
                    String insert=db.Insert(sql);
                    out.println(insert);
                    
                    resp.sendRedirect("user_login.jsp");
                    
                        
                }catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                    
                }
                }
            }
                         if(event.equals("Already Have an Account?"))
                      {
                         resp.sendRedirect("user_login.jsp");
                      }
         
    }
    
}