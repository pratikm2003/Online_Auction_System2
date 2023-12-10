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
public class main_page extends HttpServlet 
{

    Connection cn = null;
    Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String id = req.getParameter("id");
        String prboduct_name = req.getParameter("prboduct_name");
        
        String event = req.getParameter("submit");
        
        out.println(event);
        
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
         
         
         
         if(event.equals("submit"))
         {
               session.setAttribute("id",id);
              session.setAttribute("prboduct_name",prboduct_name);
              
             resp.sendRedirect("place_bid.jsp");
         }
         
         
         
         
                      if(event.equals("Sell"))
                      {
                         resp.sendRedirect("user_add_item.jsp");
                      }
                         
                      if(event.equals("Saved Products"))
                      {
                         resp.sendRedirect("saved.jsp");
                      }
                         if(event.equals("Profile & Settings"))
                      {
                         resp.sendRedirect("profile_page.jsp");
                      }
                         
                         if(event.equals("Alert"))
                      {
                         resp.sendRedirect("place_bid.jsp");
                      }
                         if(event.equals("Ratings"))
                      {
                         resp.sendRedirect("ratings.jsp");
                      }
                         if(event.equals("My Win Bid"))
                      {
                         resp.sendRedirect("win_bid.jsp");
                      }
                         if(event.equals("Contact Us"))
                      {
                         resp.sendRedirect("contact_us.jsp");
                      }
                         if(event.equals("Logout"))
                      {
                         resp.sendRedirect("user_login.jsp");
                      }
                         
                       if(event.equals("Invite Friends"))
                       {
                            
                                resp.setContentType("text/html");
                                out.println("<script type = 'text/javascript'>");
                                out.println("alert('Link has been Copied.. Please share to ypur friends')");
                                out.println("location = 'main_page.jsp'");
                                out.println("</script>");
                       }
    }
    
    
}