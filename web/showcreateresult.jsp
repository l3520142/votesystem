<%-- 
    Document   : showcreateresult
    Created on : 2019/4/9, 下午 03:28:29
    Author     : Administrator
--%>

<%@page import="com.sqlCreateVote"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            sqlCreateVote scv=(sqlCreateVote)session.getAttribute("SC");
            String s=String.format("%05d",scv.getPincode());            
        %>
    </head>
    <body>
        <form action="voteServlet" method="post">
        投票建立時間&nbsp;${TIME.getHour()}時 ${TIME.getMinute()}分 ${TIME.getSecond()}秒<br>
        總投票時間${ETIME}分<br>
        <%=scv.getVotename() %>的選項<br>
        A.<%=scv.getOptionA() %><br>
        B.<%=scv.getOptionB() %><br>
        C.<%=scv.getOptionC() %><br>
        D.<%=scv.getOptionD() %><br><br>
        投票PIN碼：
        <%=s%><br>
        <% out.print("<input type=\"hidden\" name=\"pincode\" value=\""+scv.getPincode()+"\""); %><br>        
        <input type="hidden" name="pincode" value="<%=s%>">
        <input type="submit" value="START VOTE"></form>
    </body>
</html>
