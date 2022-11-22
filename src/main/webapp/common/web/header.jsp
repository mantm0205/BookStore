
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .dropdown-btn {
        padding: 6px 8px 6px 16px;
        text-decoration: none;
        font-size: 20px;
        color: #000000;
        border: none;
        background: #7fad39;
        width: 200px;
        text-align: left;
        cursor: pointer;
        outline: none;
    }

    /* On mouse-over */
    .sidenav a:hover, .dropdown-btn:hover {
        color: #f1f1f1;
    }

    /* Main content */
    .main {
        margin-left: 200px; /* Same as the width of the sidenav */
        font-size: 20px; /* Increased text to enable scrolling */
        padding: 0px 10px;
    }

    /* Add an active class to the active dropdown button */
    .activec {
        background-color: #7fad39;
        color: white;
    }

    /* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
    .dropdown-container {
        display: none;
        background-color: #ffffff;
        padding-left: 8px;

    }

    /* Optional: Style the caret down icon */
    .fa-caret-down {
        float: right;
        padding-right: 8px;
    }

    /* Some media queries for responsiveness */
    @media screen and (max-height: 450px) {
        .sidenav {padding-top: 15px;}
        .sidenav a {font-size: 18px;}
    }
    .dropdown-container a{
        font-size: 16px;
        color: #1c1c1c;
        line-height: 39px;
        display: block;
    }
    .hero__categories{
        position: absolute;
    }
    .hero-normal{
        height: 100px;
    }
    .sticky{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 999;
        margin-left: 250px;
        background-color: #f5f5f5;

    }
</style>
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> bookstoreNLU@gmail.com</li>
                            <li>Miễn Phí Giao Hàng Cho Các Đơn Từ 499.000 VND</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <c:if test="${not empty USERMODEL}">
                        <div class="header__top__right__register">

                            <p href="<c:url value = "#"/>"> ${USERMODEL.fullname}</p>

                        </div>
                        <div class="header__top__right__auth">
                            <!-- sau chinh sua -->
                            <div class="modal-box">
                                <a href="<c:url value="/Dang-nhap?action=logout" />">
                                    <button type="button" class=" btn-lg show-modal fa fa-sign-out" aria-hidden="true">  Đăng xuất</button>
                                </a>
                                <!-- Modal -->
                            </div>
                        </div>
                        </c:if>
                        <c:if test="${ empty USERMODEL}">
                            <div class="header__top__right__auth">
                                <!-- sau chinh sua -->
                                <div class="modal-box">
                                    <!-- Button trigger modal -->
                                    <a href="<c:url value = "/Dang-nhap"/>">
                                    <button type="button" class=" btn-lg show-modal" data-toggle="modal" data-target="#myModal">
                                        Đăng nhập
                                    </button>
                                    </a>
                                    <!-- Modal -->
                                </div>
                            </div>
                            <div class="header__top__right__register">
                                <!-- <img src="img/language.png" alt=""> -->
                                <a href="<c:url value = "/dang-ky"/>" >
                                    <button type="button" class=" btn-lg show-modal" data-toggle="modal" data-target="#myModal">
                                        Đăng ký
                                    </button>
                                </a>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container" id="myHeader">
        <div class="row" style="margin-top: 20px">
            <div class="col-lg-3">
                <div class="header__logo">
                   <a href="<c:url value = "/TrangChu"/>"> <img src="https://firebasestorage.googleapis.com/v0/b/image-c757c.appspot.com/o/logo.png?alt=media&token=e813ab15-c955-48fe-83cf-47d48007a4b6"> </a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="actives"><a href="<c:url value = "/"/>">Trang Chủ</a></li>
                        <li><a href="<c:url value = "/shop"/>">Mua Sắm</a></li>

                        <li><a href="<c:url value = "/blog"/>">Bài Viết</a></li>
                        <li><a href="<c:url value = "/contact"/>">Liên Hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
<%--                        <li><a href="<c:url value = "/favourite"/>"><i class="fa fa-heart"></i> <span>1</span></a></li>--%>
                        <li><a href="<c:url value = "/cart"/>"><i class="fa fa-shopping-bag" style="font-size: 35px"></i> <span>${cart.size()}</span></a></li>
                    </ul>
                    <div class="header__cart__price">Tổng: <span>${cart.totalPrice()} VND</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
    <!-- Hero Section Begin -->

    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <button class="dropdown-btn hero__categories__all">Danh Mục
<%--                            <i class="fa fa-caret-down"></i>--%>
                        </button>
                        <div class="dropdown-container">
                            <c:forEach items="${listC}" var="ca">
                                <a href="category?cid=${ca.id}">${ca.name}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="<c:url value="/search"/>" method="get">

                                <input type="text" placeholder="Tìm kiếm sách mong muốn...." name="keyword">
                                <button  type="submit" class="site-btn">TÌM</button>

                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone" style="margin-top: 15px"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5> 0889013464</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</header>
<script>
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function() {
            this.classList.toggle("activec");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "grid") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "grid";
            }
        });
    }
</script>
<script>
    window.onscroll = function (){
        myFunction()
    };
    var header  = document.getElementById("myHeader");
    var sticky = header.offsetTop;
    function myFunction(){
        if (window.pageYOffset > sticky){
            header.classList.add("sticky");
        }else {
            header.classList.remove("sticky");
        }
    }
</script>