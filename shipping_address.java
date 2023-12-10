/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.net.httpserver.HttpPrincipal;
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
public class shipping_address extends HttpServlet
{
        Connection cn = null;
        Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        
        
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        String name = req.getParameter("name");
        String contact = req.getParameter("contact");
        String pincode = req.getParameter("pincode");
        String houseno = req.getParameter("houseno");
        String area = req.getParameter("area");
        String landmark = req.getParameter("landmark");
        String city = req.getParameter("city");
        String states = req.getParameter("States");
        String Address_time = req.getParameter("Address_time");
        String event = req.getParameter("submit");
       
        out.print(name);
        out.print(contact);
        out.print(pincode);
        out.print(houseno);
        out.print(area);
        out.print(landmark);
        out.print(city);
        out.print(states);
        out.print(Address_time);
        out.print(event);
        
         Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
        
       
        
        if(event.equals("Place Order"))
        {
            if(name.equals("")||contact.equals("")||pincode.equals("")||houseno.equals("")||area.equals("")||landmark.equals("")||city.equals("")||states.equals("")||Address_time.equals(""))
            {
            
               //out.println("Some Record Are Empty");
                                   resp.setContentType("text/html");
                                   out.println("<script type = 'text/javascript'>");
                                   out.println("alert('Some Record Are Empty')");
                                   out.println("location = 'shipping_address.jsp'");
                                   out.println("</script>");
            
            }
            
            else
            {
                try
                {
                    
                    String sql="insert into address(name, contact_no, pin_code, house_bulding, area, landmark, town_city, state, address_type)values('"+name+"','"+contact+"','"+pincode+"','"+houseno+"','"+area+"','"+landmark+"','"+city+"','"+states+"','"+Address_time+"')";
                    
                    String insert=db.Insert(sql);
                    out.println(insert);
                    
                    
                    if(event.equals("Place Order"))
                     {
                         resp.sendRedirect("payment.jsp");
                      }
                    
                }
                 
                    catch(Exception ex)
                {
                    
                    out.println(ex.toString());
                    
                }
                
                
            }
            
        }
        
                        if(event.equals("Back"))
                      {
                         resp.sendRedirect("main_page.jsp");
                      }
}
}
    
  
        