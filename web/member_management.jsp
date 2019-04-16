<%-- 
    Document   : member_management.jsp
    Created on : 2019/4/2, 上午 10:55:31
    Author     : Administrator
--%>

<%@page import="java.net.InetAddress"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sqlCreateVote"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.SQLCustomer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%! 
            String CImg="";
           String CMail="";
            String votename="";
        %>
        <%           
            InetAddress host = InetAddress.getLocalHost();
            SQLCustomer sct=null; 
            ResultSet rs=null;
            sct=(SQLCustomer)session.getAttribute("SA");
            try{
                CImg=sct.getImageurl().replace("C:/WebFinal/web/", "").trim();
            }catch(Exception e){
                CImg=sct.getImageurl().trim();
            }
            CMail=sct.getEmail();
        %>
        <%
//            ResultSet rst=sqlCreateVote.QueryAll();
//            try{while(rst.next())
//            {
//                votename=rst.getString("votename");
//            }}catch(Exception e){}
        %>
        
    </head>
    <body>
        <% out.println("<img src=\""+CImg+"\" width=\"205\" height=\"177\"/>"); %><br>
        <%=CMail%>
    </body>
</html>
