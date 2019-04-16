<%-- 
    Document   : buildoption
    Created on : 2019/4/8, 上午 10:50:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="ShowTime()">
        <form action="createServlet" method="post">
            <div id="showbox"></div>
            <input type="text" value="votename" name="votename"><br>
            <input type="text" value="A" name="optionA"><br>
            <input type="text" value="B" name="optionB"><br>
            <input type="text" value="C" name="optionC"><br>
            <input type="text" value="D" name="optionD"><br>
            投票時長<input type="number" value="3" name="timeout">分<br>
            <input type="submit" value="新增投票" >
        </form>
        
         <script language="JavaScript">
                function ShowTime(){
                  var NowDate=new Date();
                  var y=NowDate.getFullYear();
                  var mon=NowDate.getMonth();
                  var d=NowDate.getDate();
                  var h=NowDate.getHours();
                  var m=NowDate.getMinutes();
                  document.getElementById('showbox').innerHTML = y+'年'+mon+'月'+d+'日'+h+'時'+m+'分';
                  setTimeout('ShowTime()',1000);
                }
         </script>
    </body>
</html>
