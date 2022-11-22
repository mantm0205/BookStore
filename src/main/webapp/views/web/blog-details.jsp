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
    <title>BOOKSTORE NLU | Bài viết chi tiết</title>
    <script src="https://apis.google.com/js/plusone.js"></script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>


       <div class="container">
           <div class="row">
               <div class="col-lg-12 d-flex text-center">
                    <h2>${blogdetails.title}</h2>
               </div>
               <div class="col-sm-12 mt-4 pt-2">
                   <img src="${blogdetails.image}" style="width: 70%;height: 400px;display: flex;margin: 0 auto;justify-content: center;align-items: center;margin-bottom: 25px;font-size: 16px">
                ${blogdetails.content}
               </div>
           </div>

       </div>
<div class="container">
    <div class="row">
        <div class="col-sm-12 title">
            <h4 style="text-align: center">Comment</h4></div>
        <div class="col-sm-12">
                   <textarea placeholder="Comment" style="width: 80%;">
                   </textarea>
            <button class="btn btn-primary"> Send</button>
        </div>
    </div>
</div>

   <!-- Blog Details Hero End -->



   <!-- Related Blog Section Begin -->
   <section class="related-blog spad">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                   <div class="section-title related-blog-title">
                       <h2>Post You May Like</h2>
                   </div>
               </div>
           </div>
           <div class="row">
               <div class="col-lg-4 col-md-4 col-sm-6">
                   <div class="blog__item">
                       <div class="blog__item__pic">
                           <img src="../../img/blog/blog-1.jpg" alt="">
                       </div>
                       <div class="blog__item__text">
                           <ul>
                               <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                               <li><i class="fa fa-comment-o"></i> 5</li>
                           </ul>
                           <h5><a href="#">Cooking tips make cooking simple</a></h5>
                           <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                       </div>
                   </div>
               </div>
               <div class="col-lg-4 col-md-4 col-sm-6">
                   <div class="blog__item">
                       <div class="blog__item__pic">
                           <img src="../../img/blog/blog-2.jpg" alt="">
                       </div>
                       <div class="blog__item__text">
                           <ul>
                               <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                               <li><i class="fa fa-comment-o"></i> 5</li>
                           </ul>
                           <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                           <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                       </div>
                   </div>
               </div>
               <div class="col-lg-4 col-md-4 col-sm-6">
                   <div class="blog__item">
                       <div class="blog__item__pic">
                           <img src="../../img/blog/blog-3.jpg" alt="">
                       </div>
                       <div class="blog__item__text">
                           <ul>
                               <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                               <li><i class="fa fa-comment-o"></i> 5</li>
                           </ul>
                           <h5><a href="#">Visit the clean farm in the US</a></h5>
                           <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- Related Blog Section End -->
</body>

</html>