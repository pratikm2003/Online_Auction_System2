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
public class admin_win_bid extends HttpServlet 
{
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
          
        String search =req.getParameter("search");
        String event=req.getParameter("submit");
       
        out.print(search);
        out.println(event);
        
        Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
    
    
     if(event.equals("Search"))
         {
             
                              try
                              {
                                 session.setAttribute("search", search);
                                 resp.sendRedirect("admin_win_bid1.jsp");
                              
                              
                              }
                              catch(Exception ex)
                              {
                                 out.println(ex.toString());
                                  
                              }
                              
                          
         }          
         
         }
    
    
    
}