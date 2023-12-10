/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
public class place_bid extends HttpServlet 
{

    Connection cn = null;
    Statement st =null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
        PrintWriter out = resp.getWriter();
        
        HttpSession session = req.getSession();
        
        
         String id=req.getParameter("id");
       String made_in = req.getParameter("made_in");
         String prboduct_name = req.getParameter("prboduct_name");
         String add_image = req.getParameter("add_image");
         String history = req.getParameter("history");
         String fbid=req.getParameter("reserve_price");
         String sbid=req.getParameter("next_bid");
         String event=req.getParameter("submit");
         String bid_increse = req.getParameter("bid_increse");
         String current_bid_price = req.getParameter("current_bid_price");
         String next_bid_price = req.getParameter("next_bid_price");
         
         fbid = next_bid_price;
         sbid = String.valueOf(Long.parseLong(next_bid_price)+ Long.parseLong(bid_increse));
         
         out.println(id);
         out.println(prboduct_name);
         out.println(fbid);
         out.println(event);
        
         Database db = new Database();
         String result =db.Connectdb();
         out.println(result);
         
         if(event.equals("Save"))
         {
             try
             {
              String sql="insert into save_product(id,user_id, prboduct_name, made_in, reserve_price, bid_increse, history, add_image)values('"+id+"','"+session.getAttribute("user_id") +"','"+prboduct_name+"','"+made_in+"','"+fbid+"','"+sbid+"','"+history+"','"+add_image+"')";
                        String insert=db.Insert(sql);
                        out.println(insert); 
                       resp.sendRedirect("saved.jsp");
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         }
         
         
         if(event.equals("Place Bid"))
         {
            
        
            try
             {  
                    Connection cn1=null;
                    Statement st1=null;
                    Class.forName("com.mysql.jdbc.Driver");
                    cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_beading","root","root");
                    st1=cn1.createStatement();

                    String sql1="select * from place_bid where pid='"+session.getAttribute("id") +"' && user_id = '"+session.getAttribute("user_id") +"' && f_bid = '"+current_bid_price+"' && s_bid = '"+next_bid_price+"' ";
                    ResultSet rs1= st1.executeQuery(sql1); 
                    if(rs1.next())
                    {
                        resp.setContentType("text/html");
                        out.println("<script type = 'text/javascript'>");
                        out.println("alert('You have already placed bid with this amount please wait for time end.. Or place bid after another bidder..')");
                        out.println("location = 'place_bid.jsp'");
                        out.println("</script>");
                    }
                    else
                    {
                        out.println(session.getAttribute("user_id")); 
                        String sql="insert into place_bid(user_id,pid,pname, f_bid, s_bid)values('"+session.getAttribute("user_id") +"','"+id+"','"+prboduct_name+"','"+fbid+"','"+sbid+"')";
                        String insert=db.Insert(sql);
                        out.println(insert); 
                        resp.sendRedirect("place_bid.jsp");
                    }
                    
             }
             catch(Exception ex)
             {
                out.println(ex.toString());
             }
        }
         
         if(event.equals("Back"))
         {
             resp.sendRedirect("main_page.jsp");
         }
        
       
    }    
}

    
    
