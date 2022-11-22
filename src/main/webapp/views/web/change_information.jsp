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
    <title>BOOKSTORE NLU | Thay đổi thông tin</title>

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

   <!-- Breadcrumb Section Begin -->
   <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
       <div class="container">
           <div class="row">
               <div class="col-lg-12 text-center">
                   <div class="breadcrumb__text">
                       <h2>BOOKSTORE NLU</h2>
                       <div class="breadcrumb__option">
                           <!-- <a href="./index.html">Home</a> -->
                           <a href="./index.html">Trang chủ</a>
                           <span>Thay đổi thông tin</span>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Product Details Section Begin -->
   <!-- Register Section Begin -->
   <div class="register-login-section spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-6 offset-lg-3">
                   <div class="register-form">
                       <h2>THAY ĐỔI THÔNG TIN</h2>
                       <form id="info" action="" method="post">
                           <div class="group-input">
                               <label for="fname">Họ *</label>
                               <input type="text" value ='' name="fname"  id="fname">
                               <label style="color:#F00;" for="fname" class="error">
                               </label>
                           </div>
                           <div class="group-input">
                               <label for="lname">Tên *</label>
                               <input type="text" value ='' name="lname"  id="lname">
                               <label style="color:#F00;" for="lname" class="error">
                               </label>
                           </div>
                           <div class="group-input">
                               <label for="email">Địa chỉ email *</label>
                               <input type="email" value ='' name="email"  id="email">
                               <label style="color:#F00;" for="email" class="error">
                               </label>
                           </div>
                           <div class="group-input">
                               <label for="phone">Số điện thoại</label>
                               <input type="text" value = ''  id="phone" name="phone">
                               <label style="color:#F00;" for="phone" class="error">
                               </label>
                           </div>
                           <div  class="group-input"  style="display: inline-flex;
                         margin-bottom: 0px; width: 555px; justify-content: space-between">
                               <div class="group-input" style="width: 420px !important;">
                                   <label for="gender">Ngày sinh *</label>
                                   <input  />

                               </div>

                               <div class="group-input">
                                   <label for="gender">Giới tính *</label>
                                   <select id="gender" name="gender"
                                           style="width: 112px !important; padding-left: 33px; height: 50px; border: 1px lightgray solid;">
                                       <option >Nam</option>
                                       <option >Nữ</option>
                                       <option >Khác</option>
                                   </select>
                               </div>
                           </div>

                           <div class="group-input">
                               <label for="address">Địa chỉ</label>
                               <input value = '' type="text" id="address" name="address">
                               <label style="color:#F00;" for="address" class="error">
                               </label>
                           </div>
                           <div class="group-input">
                               <label for="password">Xác nhận(Nhập Mật khẩu *)</label>
                               <input type="password" name="password" id="password">
                               <label style="color:#F00;" for="password" class="error" >
                               </label>
                           </div>
                           <input name="page" value="info" style="display: none">
                           <button id="infoBtn" type="submit" class="site-btn register-btn">Cập nhật</button>
                       </form>
                       <div class="switch-login">
                           <a href="" class="or-login">Đổi mật khẩu</a>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>

   <!-- Related Product Section Begin -->
   <section class="related-product">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="section-title related__product__title">
                       <h2>Sản Phẩm Liên Quan</h2>
                   </div>
               </div>
           </div>
           <div class="row">
               <div class="col-lg-3 col-md-4 col-sm-6">
                   <div class="product__item">
                       <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                           <ul class="product__item__pic__hover">
                               <li><a href="#"><i class="fa fa-heart"></i></a></li>
                               <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                               <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                           </ul>
                       </div>
                       <div class="product__item__text">
                           <h6><a href="#">Atlat Địa Lý Việt Nam</a></h6>
                           <h5>30.000 VND</h5>
                       </div>
                   </div>
               </div>
               <div class="col-lg-3 col-md-4 col-sm-6">
                   <div class="product__item">
                       <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
                           <ul class="product__item__pic__hover">
                               <li><a href="#"><i class="fa fa-heart"></i></a></li>
                               <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                               <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                           </ul>
                       </div>
                       <div class="product__item__text">
                           <h6><a href="#">Bé Tập Tô Chữ Viết Thường</a></h6>
                           <h5>6.000 VND</h5>
                       </div>
                   </div>
               </div>
               <div class="col-lg-3 col-md-4 col-sm-6">
                   <div class="product__item">
                       <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
                           <ul class="product__item__pic__hover">
                               <li><a href="#"><i class="fa fa-heart"></i></a></li>
                               <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                               <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                           </ul>
                       </div>
                       <div class="product__item__text">
                           <h6><a href="#">Bé Tập Tô Chữ Số</a></h6>
                           <h5>5.090 VND</h5>
                       </div>
                   </div>
               </div>
               <div class="col-lg-3 col-md-4 col-sm-6">
                   <div class="product__item">
                       <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">
                           <ul class="product__item__pic__hover">
                               <li><a href="#"><i class="fa fa-heart"></i></a></li>
                               <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                               <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                           </ul>
                       </div>
                       <div class="product__item__text">
                           <h6><a href="#">Tiếng Anh 6</a></h6>
                           <h5>78.000 VNĐ</h5>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Related Product Section End -->

</body>
</html>