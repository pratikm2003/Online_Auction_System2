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
public class profile_page extends HttpServlet 
{
    
    
    Connection cn = null;
    Statement st = null;
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
         
         String event=req.getParameter("submit");
        
         
         out.println(event);
        
         Database db = new Database();
         String result =db.Connectdb();
         out.println(result);
         
       /* if(event.equals("Edit ✏️"))
         {
         try
         {
            
            String sql="insert into profile_page(name, contact, mail)values('"+name+"','"+contact_no+"','"+mail+"')";
            String insert=db.Insert(sql);
            out.println(insert);
             
         }catch(Exception ex)
         {
             out.println(ex.toString());
         }
    }
      */  
        if(event.equals("Edit"))
         {
             resp.sendRedirect("profile_edit.jsp");
         }
        
        if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
        
        
    }    
}

    
    
