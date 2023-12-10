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
public class product_view extends HttpServlet
{
    Connection cn = null;
    Statement st =null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
    
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        
        
        String id = req.getParameter("id");
        String event = req.getParameter("submit");
        String product_status=req.getParameter("product_status");
        Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
        if(event.equals("Accept"))
        {
            if(product_status.equals("Accept"))
            {
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Request Accepted')");
                out.println("location = 'add_item.jsp'");
                out.println("</script>");
                resp.sendRedirect("product_request.jsp");
            }
            
                else
            {
                try
                {
                    String update=db.update("update add_item set product_status='Accepted' where id='"+id+"' ");
                    out.println(update);
                    resp.sendRedirect("user_request.jsp");
                    
                }
                catch(Exception ex)
                        {
                             resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Request Accepted')");
                out.println("location = 'add_item.jsp'");
                out.println("</script>");
                        }
            }
             
       }
        
      if(event.equals("Delete"))
        {
            try
            {
                String sql ="delete from add_item where id='"+id+"'";
                String delete = db.delete(sql);
                out.println(delete);
                resp.setContentType("text/html");
                    out.println("<script type='text/javascript' >");
                out.println("alert('"+delete.toString()+"')");
                out.println("location= 'product_view.jsp' ");
                out.println("</script>");
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+ex.toString()+"')");
                out.println("location= 'product_view.jsp' ");
                out.println("</script>");
            }
        }
        
        
        if(event.equals("Back"))
        {    
            resp.sendRedirect("user_request.jsp");
        }
    }
}