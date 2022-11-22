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
    <title>BOOKSTORE NLU | Câu hỏi thường gặp</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>
   <!-- Hero Section Begin -->
   <section class="hero hero-normal">
       <div class="container">
           <div class="row">
               <div class="col-lg-3">
                   <div class="hero__categories">
                       <div class="hero__categories__all">
                           <i class="fa fa-bars"></i>
                           <span>Danh mục</span>
                       </div>
                       <ul>
                           <li><a href="#">Văn Học</a></li>
                           <li><a href="#">Kinh Tế</a></li>
                           <li><a href="#">Tâm Lý</a></li>
                           <li><a href="#">Kĩ Năng Sống</a></li>
                           <li><a href="#">Nuôi dạy con</a></li>
                           <li><a href="#">Sách Thiếu Nhi</a></li>
                           <li><a href="#">Tiểu Sử</a></li>
                           <li><a href="#">Giáo Dục</a></li>
                           <li><a href="#">Ngoại Ngữ</a></li>
                           <li><a href="#">Tham Khảo</a></li>
                           <li><a href="#">Khác</a></li>
                       </ul>
                   </div>
               </div>
               <div class="col-lg-9">
                   <div class="hero__search">
                       <div class="hero__search__form">
                           <form action="#">
                               <!-- <div class="hero__search__categories">
                                   All Categories
                                   <span class="arrow_carrot-down"></span>
                               </div> -->
                               <input type="text" placeholder="Tìm kiếm sách mong muốn....">
                               <button type="submit" class="site-btn">TÌM</button>
                           </form>
                       </div>
                       <div class="hero__search__phone">
                           <div class="hero__search__phone__icon">
                               <i class="fa fa-phone"></i>
                           </div>
                           <div class="hero__search__phone__text">
                               <h5>+841234567</h5>
                               <span>Hỗ trợ 24/7</span>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Hero Section End -->

   <!--Faq Section-->

   <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
       <div class="container">
           <div class="row">
               <div class="col-lg-12 text-center">
                   <div class="breadcrumb__text">
                       <h2>BOOKSTORE NLU</h2>
                       <div class="breadcrumb__option">
                           <!-- <a href="./index.html">Home</a> -->
                           <a href="./index.html">Trang chủ</a>
                           <span>Câu hỏi thường gặp</span>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Faq Section Begin -->
   <div class="faq-section spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="faq-accordin">
                       <div class="accordion" id="accordionExample">
                           <div class="card">
                               <div class="card-heading active">
                                   <a class="active" data-toggle="collapse" data-target="#collapseOne">
                                       Sản phẩm có được đổi trả không ?
                                   </a>
                               </div>
                               <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                   <div class="card-body">
                                       Khách hàng hoàn toàn có thể đổi trả hàng trong vòng 7 ngày
                                       kể từ ngày nhận hàng. </br> Tuy nhiên, hàng phải còn nguyên vẹn, không rách, nát, hư hỏng
                                   </div>
                               </div>
                           </div>
                           <div class="card">
                               <div class="card-heading">
                                   <a data-toggle="collapse" data-target="#collapseTwo">
                                       Sản phẩm có giống với màu và hình ảnh thực tế sản phẩm không ?
                                   </a>
                               </div>
                               <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                   <div class="card-body">
                                       <p>Fashi cam kết hình ảnh sản phẩm trên website và sản phẩm giao cho khách hàng là giống nhau 100%</p>
                                   </div>
                               </div>
                           </div>
                           <div class="card">
                               <div class="card-heading">
                                   <a data-toggle="collapse" data-target="#collapseThree">
                                       Đơn hàng online có thể giao hàng đến những tỉnh thành nào ?
                                   </a>
                               </div>
                               <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                   <div class="card-body">
                                       <p>Fashi hỗ trợ giao hàng ở tất cả các tỉnh thành trên toàn quốc</p>
                                   </div>
                               </div>
                           </div>
                           <div class="card">
                               <div class="card-heading">
                                   <a data-toggle="collapse" data-target="#collapseFour">
                                       Đặt hàng online có cần đăng ký tài khoản không ?
                                   </a>
                               </div>
                               <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                   <div class="card-body">
                                       <p>Để mua được hàng tại Fashi, khách hàng không nhất thiết cần có tài khoản</br>Tuy nhiên nếu trở thành thành viên của Fashi, khách hàng sẽ nhận được nhiều ưu đãi hơn</p>
                                   </div>
                               </div>
                           </div>

                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
</body>

</html>