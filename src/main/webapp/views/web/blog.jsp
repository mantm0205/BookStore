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
    <title>BOOKSTORE NLU | Bài viết</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


</head>

<body>

<section>
    <div class="container">
    <div class="row">
        <div class="col-sm-12" style="display: flex;text-align: center;justify-content: center;align-items: center">
            <h2>Danh Sách Blog</h2>
        </div>
    </div></div>
</section>

<section class="blog spad">

    <div class="container">

        <div class="row">
            <c:forEach items="${listBlog}" var="blog">

            <div class="col-sm-12" style="margin-bottom: 25px;box-shadow: red">
                <article class="list_blog d-flex justify-content-center" style="border: 1px solid grey;box-shadow: 0px 2px 19px 2px #d9d2d2">
                 <div class="image" style="width: 30%">
                     <a style="cursor:pointer;">
                         <img src="${blog.image}" style="height: 290px;width: 100%">
                     </a>
                 </div>
                    <div class="content" style="width: 70%;margin-left: 20px">
                        <h3 class="mt-3">${blog.title}</h3>
                        <h5 class="mt-2">${blog.dateCreate}</h5>
                        <div style="word-break: break-word" class="mt-2">${blog.shortcut}</div>
                        <a href="detailsBlog?blogId=${blog.id}">
                        <button class="btn btn-primary mt-2"> Read More</button>
                        </a>
                    </div>
            </article>

            </div>
            </c:forEach>
        </div>

    </div>
</section>



</body>

</html>