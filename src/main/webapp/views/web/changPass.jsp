<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Thay đổi mật khẩu</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>
<body>


   <div class="register-center">
       <div class="container">
           <div class="title">Thay đổi mật khẩu</div>
           <div id="changPass">

               <form action="resetPass" method="post" class="formPass">
                   <div class="flex" style="display: flex;">
                       <div>
                           <div class="textPass" ><label>Mật khẩu mới</label></div>
                           <div class="textPass"><label>Nhắc lại mật khẩu mới</label></div>
                       </div>
                       <div>
                           <div class="textPass"><input type="password" name="password"></div>
                           <div class="textPass"><input type="password" name="confirm"></div>
                       </div>
                   </div>
                   <button type="submit" value="reset" class="submit btn">Thay đổi</button>
               </form>
           </div>
       </div>

   </div>
</body>
</html>