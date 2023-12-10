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
public class index extends HttpServlet 
{
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
                         
                         if(event.equals("Auction"))
                      {
                         resp.sendRedirect("home_page.jsp");
                      }
                
        
    }
}