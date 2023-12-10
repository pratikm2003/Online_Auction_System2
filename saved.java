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
public class saved extends HttpServlet 
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
        out.println(id);
         Database db = new Database();
         String result = db.Connectdb();
         out.println(result);
         
         
         
         if(event.equals("submit"))
         {
               session.setAttribute("id",id);
              session.setAttribute("prboduct_name",prboduct_name);
              
             resp.sendRedirect("place_bid.jsp");
         }
         
         
         if(event.equals("Delete"))
        {
            try
            {
                String sql = "delete from save_product where id='"+id+"'";
                String delete = db.delete(sql);
                out.println(delete);
                
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+delete.toString()+"')");
                out.println("location= 'saved.jsp' ");
                out.println("</script>");
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+ex.toString()+"')");
                out.println("location= 'saved.jsp' ");
                out.println("</script>");
            }
        }
         
         if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
    }
}