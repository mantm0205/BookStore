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
    <title>BOOKSTORE NLU | Liên hệ</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


</head>

<body>

   <!-- Breadcrumb Section Begin -->
<%--   <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">--%>
<%--       <div class="container">--%>
<%--           <div class="row">--%>
<%--               <div class="col-lg-12 text-center">--%>
<%--                   <div class="breadcrumb__text">--%>
<%--                       <h2>Liên Hệ</h2>--%>
<%--                       <div class="breadcrumb__option">--%>
<%--                           <a href="./index.html">Trang Chủ</a>--%>
<%--                           <span>Liên Hệ</span>--%>
<%--                       </div>--%>
<%--                   </div>--%>
<%--               </div>--%>
<%--           </div>--%>
<%--       </div>--%>
<%--   </section>--%>
   <!-- Breadcrumb Section End -->
   <!-- Contact Form Begin -->
   <div class="contact-form spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="contact__form__title">
                       <h2>Phản Hồi</h2>
                   </div>
               </div>
           </div>
           <form action="#">
               <div class="row">
                   <div class="col-lg-6 col-md-6">
                       <input type="text" placeholder="Họ và Tên">
                   </div>
                   <div class="col-lg-6 col-md-6">
                       <input type="text" placeholder="Email">
                   </div>
                   <div class="col-lg-12 text-center">
                       <textarea placeholder="Nội dung"></textarea>
                       <button type="submit" class="site-btn">Gửi</button>
                   </div>
               </div>
           </form>
       </div>
   </div>
   <!-- Contact Form End -->
   <!-- Contact Section Begin -->
   <section class="contact spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                   <div class="contact__widget">
                       <span class="icon_phone"></span>
                       <h4>Số Điện Thoại</h4>
                       <p>+84 123 456 789</p>
                   </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                   <div class="contact__widget">
                       <span class="icon_pin_alt"></span>
                       <h4>Địa Chỉ</h4>
                       <p>Đại Học Nông Lâm TPHCM</p>
                   </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                   <div class="contact__widget">
                       <span class="icon_clock_alt"></span>
                       <h4>Thời gian mở cửa</h4>
                       <p>10:00 - 23:00 pm</p>
                   </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                   <div class="contact__widget">
                       <span class="icon_mail_alt"></span>
                       <h4>Email</h4>
                       <p>bookstoreNLU@gmail.com</p>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Contact Section End -->

   <!-- Map Begin -->
   <div class="map">
       <iframe
               src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d49116.39176087041!2d-86.41867791216099!3d39.69977417971648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x886ca48c841038a1%3A0x70cfba96bf847f0!2sPlainfield%2C%20IN%2C%20USA!5e0!3m2!1sen!2sbd!4v1586106673811!5m2!1sen!2sbd"
               height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
       <div class="map-inside">
           <i class="icon_pin"></i>
           <div class="inside-widget">
               <h4>New York</h4>
               <ul>
                   <li>Phone: +84 353 535 355</li>
                   <li>Add: 16 Creek Ave. Farmingdale, NY</li>
               </ul>
           </div>
       </div>
   </div>
   <!-- Map End -->
</body>

</html>