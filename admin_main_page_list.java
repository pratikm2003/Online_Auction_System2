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
public class admin_main_page_list extends HttpServlet {
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        
        String id = req.getParameter("id");
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
        if(event.equals("Delete"))
        {
            try
            {
                String sql = "delete from add_item where id='"+id+"'";
                String delete = db.delete(sql);
                out.println(delete);
                
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+delete.toString()+"')");
                out.println("location= 'admin_main_page_list.jsp' ");
                out.println("</script>");
            }
            catch(Exception ex)
            {
                resp.setContentType("text/html");
                out.println("<script type='text/javascript' >");
                out.println("alert('"+ex.toString()+"')");
                out.println("location= 'admin_main_page_list.jsp' ");
                out.println("</script>");
            }
        }
                
        
    }
     
}