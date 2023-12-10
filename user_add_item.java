/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class user_add_item extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        
        String product_name = req.getParameter("product_name");
        String made_in = req.getParameter("made_in");
        String reserved_price = req.getParameter("reserved_price");
        String bid_increament = req.getParameter("bid_increament");
        String histry = req.getParameter("histry");
        String add_image = req.getParameter("add_image");
        String event = req.getParameter("submit");
        
       
        out.println(product_name);
        out.println(made_in);
        out.println(reserved_price);
        out.println(bid_increament);
        out.println(histry);
        out.println(add_image);
        out.println(event);
        
        
        Database db = new Database();
        String result =db.Connectdb();
        out.println(result);
      
        Date date=new Date();
          SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
          String cd=formatter.format(date);
          
        
        
    if(event.equals("Submit & Send Request"))
        {
            if(product_name.equals("")||made_in.equals("")||reserved_price.equals("")||bid_increament.equals("")||histry.equals("")||add_image.equals(""))
            {
                
                
                              resp.setContentType("text/html");
                              out.println("<script type = 'text/javascript'>");
                              out.println("alert('Some feild Are Empty')");
                              out.println("location = 'user_add_item.jsp'");
                              out.println("</script>");
            }
            else
            {
                try
                {
                    String sql ="insert into add_item(prboduct_name, made_in, reserve_price, bid_increse, history, add_image, added_by, added_by_id, product_status,date)values('"+product_name+"','"+made_in+"','"+reserved_price+"','"+bid_increament+"','"+histry+"','"+add_image+"', 'User', '"+session.getAttribute("user_id")+"', 'Pending','"+cd+"')";
                    String insert=db.Insert(sql);
                    out.println(insert);
                     resp.setContentType("text/html");
                             out.println("<script type = 'text/javascript'>");
                             out.println("alert('Request Send Successfully')");
                             out.println("location = 'user_add_item.jsp'");
                             out.println("</script>");
                   
                        
                }catch(Exception ex)
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

    