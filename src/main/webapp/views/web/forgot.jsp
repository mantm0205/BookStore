<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Quên mật khẩu</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>

   <div class="register-center">
       <div class="container">
           <div class="title">Quên mật khẩu</div>
           <div class="bg-white text-center p-5 mt-3 center">
               <p>Bạn vui lòng nhập lại tên đăng nhập hoặc Email để lấy lại mật khẩu nhé!</p>
               <form class="pb-3" action="forgot" method="POST">
                   <div class="form-group" style="margin: 20px 80px;">
                       <input style="padding: 10px;" name="email" class="form-control" placeholder="Tên đăng nhập hoặc email*" required style="width: 50%; ">
                   </div>
                   <input type="submit" value="Đặt lại mật khẩu" class="submit" style="background-color:  #3bb734; width: 172px; font-size: 20px; border-radius: 5px; color: white; outline: 0px;"/>
               </form>

           </div>
       </div>

   </div>
</body>

</html>