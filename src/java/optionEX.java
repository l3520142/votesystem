/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/optionEX"})
public class optionEX extends HttpServlet {
private static final long serialVersionUID = 1L;

    public optionEX() {
        super();
    }

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            
        request.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        String optionA=request.getParameter("optionA");        
        session.setAttribute("OA", optionA);
        String optionB=request.getParameter("optionB");
        session.setAttribute("OB", optionB);
        String optionC=request.getParameter("optionC");
        session.setAttribute("OC", optionC);
        String optionD=request.getParameter("optionD");
        session.setAttribute("OD", optionD);
        //String countA=request.getParameter("countA"); 
        int countA=Integer.parseInt(request.getParameter("countA")); 
        session.setAttribute("CA", countA);
        //String countB=request.getParameter("countB");
        int countB=Integer.parseInt(request.getParameter("countB"));         
        session.setAttribute("CB", countB);
        //String countC=request.getParameter("countC");
        int countC=Integer.parseInt(request.getParameter("countC"));         
        session.setAttribute("CC", countC);
        //String countD=request.getParameter("countD");
        int countD=Integer.parseInt(request.getParameter("countD"));
        session.setAttribute("CD", countD);        
        response.sendRedirect("voteresult.jsp");        
    }

}
