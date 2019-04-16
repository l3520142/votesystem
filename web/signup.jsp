<%-- 
    Document   : signup
    Created on : 2019/4/1, 下午 02:15:51
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="com.SQLCustomer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <h1 align="center">註冊新帳號</h1>
        <form action="registered" enctype="multipart/form-data" method="post">
        <p align="center">上傳頭像
            <input type="file" name="photo" onchange="readURL(this)" targetID="previewimg"/><br><br>
            <img id="previewimg" src="conan.jpg" width="205" height="177"/><br></p>
            <p align="center">姓名<input type="text" name="name" id="name"></p>
            <p align="center">電子郵件<input type="text" name="email" id="email"></p>
            <p align="center">密碼<input type="password" name="password" id="password"></p>
            <p align="center">密碼確認<input type="password" name="recheckpw" id="recheckpw"></p>
            <p align="center"><input type="submit" value="註冊"><input type="reset" value="重設"></p>
        </form> 
        ${ER}
<script>
function readURL(input){

  if(input.files && input.files[0]){
    var imageTagID = input.getAttribute("targetID");
    var reader = new FileReader();
    reader.onload = function (e) {
       var img = document.getElementById(imageTagID);
       img.setAttribute("src", e.target.result)
    }
    reader.readAsDataURL(input.files[0]);
  }
}
</script>
    </body>
</html>
