<%-- 
    Document   : vote
    Created on : 2019/4/10, 上午 10:38:41
    Author     : Administrator
--%>

<%@page import="com.sqlCreateVote"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
        <%
            sqlCreateVote scv=(sqlCreateVote)session.getAttribute("SCVV");
            String votename=scv.getVotename();
            String optionA=scv.getOptionA();
            String optionB=scv.getOptionB();
            String optionC=scv.getOptionC();
            String optionD=scv.getOptionD();
            int pincode=(int)session.getAttribute("PP");            
        %>
    </head>
    <body>
        <h1><%=votename%></h1>
        <form action="VotehanddleServlet" method="post">
            <input type="radio" name="Count" value="CountA"><%=optionA%><br>
            <input type="radio" name="Count" value="CountB"><%=optionB%><br>
            <input type="radio" name="Count" value="CountC"><%=optionC%><br>
            <input type="radio" name="Count" value="CountD"><%=optionD%><br>
            <% out.print("<input type=\"hidden\" name=\"pincode\" value=\""+pincode+"\""); %><br>
            <input type="submit" value="投票">
            <input type="reset" value="重選">
        </form>
    </body>
</html>
