<%-- 
    Document   : GoToVote
    Created on : 2019/4/10, 下午 04:29:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            please enter pin code<br>
        <form method="post" action="voteServlet" >
            pin code: <input type="text" name="pincode" value="33181"/>
            <input type="submit"  value="ok">
        </form>
        
    </body>
</html>
