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
public class payment extends HttpServlet 
{
    Connection cn = null;
    Statement st = null;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
       PrintWriter out = resp.getWriter();
       
       HttpSession session = req.getSession();
        String paymode =req.getParameter("paymode");
        String name = req.getParameter("name");
        String cardno = req.getParameter("cardno");
        String month = req.getParameter("month");
        String year = req.getParameter("year");
        String cvv = req.getParameter("cvv");
        String event = req.getParameter("submit");
        
       out.print(paymode);
        out.print(name);
        out.print(cardno);
        out.print(month);
        out.print(year);
        out.print(cvv);
        out.print(event);
        
         Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
      
         
        
        if(event.equals("Continue to checkout"))
        {
            if(name.equals("")||cardno.equals("")||month.equals("")||year.equals("")||cvv.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                
                resp.setContentType("text/html");
                out.println("<script type = 'text/javascript'>");
                out.println("alert('Some Record Are Empty')");
                out.println("location = 'payment.jsp'");
                out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                    String sql="insert into payment(name, cardno, month, year, cvv)values('"+name+"','"+cardno+"','"+month+"','"+year+"','"+cvv+"')";
                    
                    String insert=db.Insert(sql);
                    out.println(insert);
                    resp.sendRedirect("payment_success.jsp");
                    
                }
                
                    catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                    
                }
                
                
            }
            
        }
        if(event.equals("Back"))
        {    
            resp.sendRedirect("shipping_address.jsp");
        }
         
    }
    
     
}