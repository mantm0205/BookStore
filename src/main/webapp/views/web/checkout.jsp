<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Thanh toán</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
<style>
    .checkout__input input{
        color: black;
    }
</style>
</head>
<body>
<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6><span class="icon_tag_alt"></span> Nếu có mã giảm giá? <a href="./shoping-cart.html">Chọn ở đây</a>
                    để nhập
                </h6>
            </div>
        </div>
        <div class="checkout__form">
            <h4>Chi tiết hóa đơn</h4>
            <form action="<c:url value="/actionBill"/> " method="POST" onsubmit="Validate()">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <c:if test="${not empty USERMODEL}">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Họ và Tên<span>*</span></p>
                                        <input type="text" name="fullname" id="fullname" value="${USERMODEL.fullname}" style="color: black">
                                        <label style="color:#F00;" for="fullname" class="error" id="full">
                                            <%=request.getAttribute("err") == null ? "" : request.getAttribute("err")%>
                                        </label>
                                    </div>
                                </div></c:if>

                            </div>

                            <div class="checkout__input">
                                <p>Địa chỉ<span>*</span></p>
                                <input type="text" placeholder="Nhập địa chỉ" class="checkout__input__add"
                                       name="address" style="color: black">
                                <label style="color:#F00;" for="fullname" class="error" id="address">
                                    <%=request.getAttribute("err") == null ? "" : request.getAttribute("err")%>
                                </label>
                            </div>

                            <div class="row">
                                <c:if test="${not empty USERMODEL}">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Số điện thoại<span>*</span></p>
                                        <input type="text" name="phone" value="${USERMODEL.phone}" style="color: black">
                                        <label style="color:#F00;" for="fullname" class="error" id="phone">
                                            <%=request.getAttribute("err") == null ? "" : request.getAttribute("err")%>
                                        </label>
                                    </div>
                                </div></c:if>
                                <c:if test="${not empty USERMODEL}">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" name="email" value="${USERMODEL.email}" style="color: black">
                                        <label style="color:#F00;" for="fullname" class="error" id="email">
                                            <%=request.getAttribute("err") == null ? "" : request.getAttribute("err")%>
                                        </label>                                    </div>
                                </div></c:if>
                            </div>


                            <div class="checkout__input">
                                <p>Ghi chú đơn hàng<span>*</span></p>
                                <input type="text"
                                       placeholder="Ghi chú chi tiết." name="note" style="color: black">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Đơn đặt hàng</h4>
                                <div class="checkout__order__products">Sản Phẩm <span>Tổng giá</span></div>
                                <ul>
                                    <c:forEach items="${cartDetail.items}" var="cartD">
                                        <li>${cartD.product.name} <span>${cartD.price}</span></li>
                                    </c:forEach>
                                </ul>
                                <div class="checkout__order__subtotal">Tạm tính <span>${cart.totalPrice()} VND</span>
                                </div>
                                <div class="checkout__order__total">Total <span>${cart.totalPrice()} VND</span></div>

                                <div class="">
                                    <a href="cart"><p>Giỏ hàng</p></a>
                                </div>
                                <button type="submit" class="site-btn">Đặt Hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<script>
    function Validate() {
        var full = document.getElementById("fullname");
        var address = document.getElementById("address");
        var phone = document.getElementById("phone");
        var email = document.getElementById("email");
        if (full == null || address == null || phone == null || email || null) {
            // alert("khoong");
            return false;
        }

    }

</script>
</body>
</html>