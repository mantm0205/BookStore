<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>

    <title>BOOKSTORE NLU | Sản phẩm</title>
    <link href="<c:url value='/template/web/css/style-price.css' />" rel="stylesheet" type="text/css" media="all">
</head>
<style>

</style>
<body>

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <select id="filter-price" name="filter" onchange="changeFilterPrice()">
                                <option value="small"> Từ 0 VND đến 50000 VND</option>
                                <option value="medium">Từ 50000 VND đến 100000 VND</option>
                                <option value="large">Từ 100000 trở lên</option>


                            </select>
                        </div>
                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Nhà Cung Cấp</h4>
                        <ul>
                            <c:forEach items="${listPu}" var="pu">
                                <li><a href="publisher?pid=${pu.id}"> ${pu.publishername}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản Phẩm Mới Nhất</h4>
                            <div class="last">
                                <a href="DetailsController?pid=${lastP.id}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${lastP.img}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>${lastP.name}</h6>
                                        <span>${lastP.price} VND</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
            <div class="col-lg-8 col-md-7" id="main-view">

                            <div class="filter__item">
                                <div class="row">
                                    <div class="col-lg-4 col-md-5">
                                        <div class="filter__sort">
                                            <span>Sắp xếp</span>
                                            <select name="select" id="sort" onchange="SortbyFilter()">
                                                <option value="new" name="new">Mới Nhất</option>
                                                <option value="price" name="price">Giá Cả</option>
                                                <option value="sale" name="sale">Giảm giá </option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="filter__found">
                                            <h6><span id="count-product">  <%= request.getAttribute("totalProduct") %></span> Sản phẩm đã được tìm thấy</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-3">
                                        <div class="filter__option">
                                            <span class="icon_grid-2x2"></span>
                                            <span class="icon_ul"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="content">
                                <c:forEach items="${Page}" var="pag">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg="${pag.img}">
                                                <img src="${pag.img}" alt="" style="cursor: pointer">
                                                <ul class="product__item__pic__hover">
<%--                                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
                                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                                    <li><a href="add-to-cart?bid=${pag.id}"><i
                                                            class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product__item__text">
                                                <h6><a href="DetailsController?pid=${pag.id}">${pag.name}</a></h6>
                                                <h5>${pag.price} VND</h5>
                                            </div>
                                        </div>
                                    </div>

                                </c:forEach>
                            </div>
            </div>
                    </div>
                    <div class="row" style="margin: 0 auto;display: flex;justify-content: center;align-items: center">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <div class="product__pagination mr-3">
                                <a href="page?page=${i}" id="paging">${i}</a>
                            </div>
                        </c:forEach></div>
                    </div>
                </div>
            </div>


</section>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
    function changeFilterPrice() {

        let select = document.getElementById("filter-price");
        let content = document.getElementById("content");
        let page = document.getElementById("paging");
        document.getElementById("main-view").scrollIntoView();
        if (document.getElementById("loading") == null) {
            content.innerHTML = '<p id="loading">Loading...</p>';
            $.ajax({
                url: "/BookStore/price",
                type: "get", //send it through get method
                data: {
                    type: select.value
                },
                success: function (data) {
                    content.innerHTML = data;

                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });
            $.ajax({
                url: "/BookStore/CountProduct",
                type: "get", //send it through get method
                data: {
                    type: select.value
                },
                success: function (data) {
                    document.getElementById("count-product").innerHTML = data;
                    console.log(data)
                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });

        }
    }

    function SortbyFilter() {
        let select = document.getElementById("sort");
        let content = document.getElementById("content");
        document.getElementById("main-view").scrollIntoView();
        if (document.getElementById("loading") == null) {
            content.innerHTML = '<p id="loading">Loading...</p>';
            $.ajax({
                url: "/BookStore/SortProduct",
                type: "get", //send it through get method
                data: {
                    type: select.value
                },
                success: function (data) {
                    content.innerHTML = data;
                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });
            $.ajax({
                url: "/BookStore/CountProduct",
                type: "get", //send it through get method
                data: {
                    type: select.value
                },
                success: function (data) {
                    document.getElementById("count-product").innerHTML = data;
                    console.log(data)
                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });

        }
    }
</script>


</body>
</html>
