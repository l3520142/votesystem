<%-- 
    Document   : voteresult
    Created on : 2019/4/8, 下午 02:44:24
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
    </head>
    <%
            String votename="";
            String optionA="";
            String optionB="";
            String optionC="";
            String optionD="";
            String endmessage="";
            try{
                endmessage=(String)session.getAttribute("END");
            }catch(Exception e){}
            int CountA=0;
            int CountB=0;
            int CountC=0;
            int CountD=0;
            int pincode=(int)session.getAttribute("PC");
            ResultSet rs=sqlCreateVote.Querypincode(pincode);
            try{while(rs.next())
            {
                votename=rs.getString("votename");
                optionA=rs.getString("optionA");
                optionB=rs.getString("optionB");
                optionC=rs.getString("optionC");
                optionD=rs.getString("optionD");
                CountA=rs.getInt("CountA");
                CountB=rs.getInt("CountB");
                CountC=rs.getInt("CountC");
                CountD=rs.getInt("CountD");
            }}catch(Exception e){}
        %>
    <%
    out.println("<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>");
    out.println("<div id=\"chart_div\"></div>");    
    %>
    <body>
        ${END}
        <%    
        out.println("<script>"); 
 	out.println("google.charts.load('current', {packages: ['corechart', 'bar']});");
 	out.println("google.charts.setOnLoadCallback(drawBasic);");
 	out.println("function drawBasic() {");
 	out.println("var data = google.visualization.arrayToDataTable([");
 	out.println("['VoteResult', '"+votename+"',],");
 	out.println(" ['"+optionA+"', "+CountA+"],['"+optionB+"', "+CountB+"],['"+optionC+"', "+CountC+"],['"+optionD+"', "+CountD+"]]);");
 	out.println("var options = {title: 'Choice leader',chartArea: {width: '50%'},");
 	out.println(" hAxis: {title: 'Total Population',minValue: 0},");
 	out.println("vAxis: {title: 'Total votes'}};");
 	out.println("var chart = new google.visualization.BarChart(document.getElementById('chart_div'));");
 	out.println("chart.draw(data, options);}");
 	out.println("</script>");
        %>
    </body>
</html>
