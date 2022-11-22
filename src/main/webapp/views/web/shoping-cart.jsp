<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <h2 style="color: #7fad39">Giỏ Hàng</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang Chủ</a>
                        <span>Giỏ Hàng</span>
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
                            <th class="shoping__product">Sản Phẩm</th>
                            <th>Giá</th>
                            <th>Số Lượng
                            </th>
                            <th>Tổng Giá</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${cart.items}" var="item">
                            <form action="/BookStore/cart?action=update&code=${item.product.id}" method="post">
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="<c:url value='${item.product.img}' /> " alt="" style="width: 30%;">
                                        <h5>${item.product.name}</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                            ${item.price}
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty"style="display: flex">
                                                <input type="text" name="quantity" value="${item.quantity}"
                                                        <%= request.getAttribute("quantity") == null
                                   ? "" : request.getAttribute("quantity") %>>
                                                <button type="submit" style="margin-left: auto; border-radius: 5px;"><i class="fa fa-refresh" aria-hidden="true"></i></button>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                            ${item.price * item.quantity} VND
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <a href="removeCart?id=${item.product.id}">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="<c:url value = "/TrangChu"/>" class="primary-btn cart-btn">Tiếp tục mua sắm</a>
                    <%--                    <a href="<c:url value = "/cart"/>" class="primary-btn cart-btn cart-btn-right"><span--%>
                    <%--                            class="icon_loading"></span>--%>
                    <%--                        Cập nhật giỏ hàng</a>--%>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    <div class="shoping__discount">
                        <h5>Mã giảm giá</h5>
                        <form action="#">
                            <input type="text" placeholder="Nhập mã giảm giá">
                            <button type="submit" class="site-btn">Sử dụng</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>Tổng tiền trong giỏ hàng</h5>
                    <ul>
                        <li>Tạm Tính <span>${cart.totalPrice()} VND</span></li>
                        <li>Tổng <span>${cart.totalPrice()} VND</span></li>
                    </ul>
                    <a href="<c:url value = "/checkout"/>" class="primary-btn">Mua Hàng</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->
</body>

</html>