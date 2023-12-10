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

/**
 *
 * @author ADMIN
 */
public class bidders_list1 extends HttpServlet {
Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        String user_id = req.getParameter("user_id");
        String event = req.getParameter("submit");
        
        
         out.println(user_id);
          out.println(event);
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
       
          
                      if(event.equals("WIN"))   
                      {
                          try
                          {
                                String sql="update place_bid set status='WIN' where user_id='"+user_id+"'" ;
                                String update=db.update(sql);
                                
                                out.println(update);
                                 
                                resp.setContentType("text/html");
                                out.println("<script type = 'text/javascript'>");
                                out.println("alert('Won The Bid');");
                                out.println("location = 'bidders_list1.jsp'; ");
                                out.println("</script>");
                                
                          }catch(Exception ex)
                                  {
                                out.println(ex.toString());
                                resp.setContentType("text/html");
                                out.println("<script type = 'text/javascript'>");
                                out.println("alert('"+ex.toString()+"')");
                                out.println("location = 'bidders_list1.jsp'");
                                out.println("</script>");
                          }
                      }
                         
                         
                
        if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
    }
     
}
