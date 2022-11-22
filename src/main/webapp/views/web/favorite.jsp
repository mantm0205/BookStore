
<%@ page import="java.util.ArrayList" %>
<%@ page import="BookStore.Model.Product" %>
<%@ page import="BookStore.service.impl.FavoriteService" %>
<%@ page import="java.util.List" %>
<%@ page import="BookStore.service.IProductService" %>
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
    <title>BOOKSTORE NLU | Yêu thích</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Yêu Thích</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang Chủ</a>
                        <span>Yêu Thích</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">

            <div class="col-lg-12">

                <div class="shoping__cart__table">

                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Sản Phẩm Yêu Thích</th>
                            <th style="width: 30%; margin-right: 30px;">Giá</th>
                            <th>Tổng Tiền</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <% IProductService productService = null;
                            List<Product> list =  productService.getAll();

                        %>
                        <c:forEach var="item" items="list">
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="${item.img}" alt="" style="width: 30%;">
                                <h5>${item.name}</h5>
                            </td>
                            <td class="shoping__cart__price">
                                ${item.price} VND
                            </td>

                            <td class="shoping__cart__item__close">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn" style="background-color: lightblue; color:gray;">Thêm vào giỏ hàng</a>
                    <a href="#" class="primary-btn cart-btn cart-btn-right"style="background-color: lightblue; color:gray;"><span class="icon_loading"></span>
                        Cập Nhật</a>
                </div>
            </div>


        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->
</body>

</html>