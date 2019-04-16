/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.SQLCustomer;
import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@WebServlet(urlPatterns = {"/loginandsignup"})
public class loginandsignup extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public loginandsignup() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        
            String CImg="";
            String CMail="";
            String CName="";
            String CPassword="";
                  
            SQLCustomer sct=null; 
            ResultSet rs=null;
            if(request.getAttribute("SA") !=null)
            {
            sct=(SQLCustomer)session.getAttribute("SA");
            CImg=sct.getImageurl();
            CMail=sct.getEmail();
            CName=sct.getName();
            CPassword=sct.getPassword();
            }
            else if(request.getAttribute("RS") !=null)
            {
            rs=(ResultSet)session.getAttribute("RS");
            try{while(rs.next())
            {
                CImg=rs.getString("imageurl");
                CMail=rs.getString("email");
                CName=rs.getString("name");
                CPassword=rs.getString("password");
            }}catch(Exception e){}
            }
            session.setAttribute("CI", CImg);
            session.setAttribute("CM", CMail);
            session.setAttribute("CN", CName);
            session.setAttribute("CP", CPassword);
            response.sendRedirect("member_management.jsp");
    }
}
