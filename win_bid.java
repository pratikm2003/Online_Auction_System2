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
public class win_bid extends HttpServlet 
{
     Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        HttpSession session=req.getSession();
        
        String pid = req.getParameter("pid");
          String f_bid = req.getParameter("f_bid");
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        out.println(result);
        
                         if(event.equals("Shipping Address"))
                      {
                          session.setAttribute("pid", pid);
                          session.setAttribute("f_bid", f_bid);
                         resp.sendRedirect("shipping_address.jsp");
                      }
                
        if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
    }
     
}
