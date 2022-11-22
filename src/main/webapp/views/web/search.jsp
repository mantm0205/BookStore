<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Tìm kiếm</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>
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
                    <c:forEach items="${listProduct}" var="tk">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <a href="DetailsController?pid=${tk.id}">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-5.jpg">
                                    <img src="${tk.img}">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="DetailsController?pid=${tk.id}">${tk.name}</a></h6>
                                    <h5>${tk.price}</h5>
                                </div>
                            </div></a>
                        </div></c:forEach>
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