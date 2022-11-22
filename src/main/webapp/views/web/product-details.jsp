
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>

    <title>BOOKSTORE NLU | Thông tin sản phẩm</title>


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
                        <a href="./index.html">Mua Sắm</a>
                        <span>Chi Tiết Sản Phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="../../img/product/details/product-details-1.jpg" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="img/product/details/product-details-2.jpg"
                             src="../../img/product/details/thumb-1.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-3.jpg"
                             src="../../img/product/details/thumb-3.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-4.jpg"
                             src="../../img/product/details/thumb-2.jpg" alt="">
                        <img data-imgbigurl="img/product/details/product-details-5.jpg"
                             src="../../img/product/details/thumb-4.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">

                <c:forEach items="${Details}" var="dt">
                <div class="product__details__text">
                    <h3>${dt.name}</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 reviews)</span>
                    </div>
                    <div class="product__details__price">${dt.price} <span>${dt.pricesale}</span> </div>

                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="add-to-cart?bid=${dt.id}" class="primary-btn" style="background:steelblue;">ADD TO CARD</a>
                    <a href="<c:url value = "/checkout"/>" class="primary-btn" >MUA NGAY</a>
                    <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                    <ul>
                        <li><b>Nhà cung cấp:</b> <span>Minh Long</span></li>
                        <li><b>Nhà xuất bản:</b> <span>${dt.publisher}</span></li>
                        <li><b>Tác giả:</b> <span>${dt.cate} </span></li>
                        <li><b>Giao Hàng:</b> <span>Giao hàng trong ngày. <samp>Miễn phí vận chuyển.</samp></span></li>
                        <li><b>Share on</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
                </c:forEach>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">Mô Tả</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">Thông Tin</a>
                        </li>

                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Tập Tô Nét Cơ Bản</h6>
                                <p>Con bạn sắp vào lớp 1? Không chỉ bé hồi hộp mà chính bạn – những bậc làm cha mẹ cũng có tâm trạng đó.
                                    Làm sao để chuẩn bị cho bé thật tốt? Làm thế nào để bé không bỡ ngỡ khi bước vào một giai đoạn hoàn toàn mới này?</p><br>
                                <p>Bộ sách Chuẩn bị cho bé vào lớp 1 sẽ giúp cha mẹ giải tỏa những lo lắng, băn khoăn đó. Nội dung sách gần gũi với chương
                                    trình sách giáo khoa chuẩn, bao gồm:  giúp bé luyện tay theo các nét cơ bản đầu tiên; như móc, sổ, ngang, sọc, xước,
                                    vòng, giúp bé làm quen với bảng chữ cái gồm 29 chữ theo cách viết thường và viết hoa;  ngoài ra, bé còn được làm quen
                                    với các con số và những phép tính đơn giản v.v…</p><br>
                                <p>Thông qua những hình ảnh minh họa sinh động, màu sắc tươi sáng, bắt mắt, bộ sách Chuẩn bị cho bé vào lớp 1sẽ khiến bé cảm thấy vô cùng thú vị, giúp việc học và nhớ chữ của các bé đạt kết quả tốt hơn.</p>

                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <table style="width:70%;">
                                    <tr>
                                        <th>Mã hàng</th>
                                        <td>8936067599022</td>
                                    </tr>
                                    <tr>
                                        <th>Cấp Độ/ Lớp</th>
                                        <td>Lớp 1</td>
                                    </tr>
                                    <tr>
                                        <th>Nhà Cung Cấp</th>
                                        <td>Minh Long</td>
                                    </tr>
                                    <tr>
                                        <th>Tác giả</th>
                                        <td>Lê Tuệ Minh, Lê Thu Ngọc</td>
                                    </tr>
                                    <tr>
                                        <th>NXB</th>
                                        <td>NXB Đại học sư phạm</td>
                                    </tr>
                                    <tr>
                                        <th>Năm XB</th>
                                        <td>2019</td>
                                    </tr>
                                    <tr>
                                        <th>Kích Thước Bao Bì</th>
                                        <td>17 x 24 cm</td>
                                    </tr>
                                    <tr>
                                        <th>Hình thức</th>
                                        <td>Bìa Mềm</td>
                                    </tr>
                                    <tr>
                                        <th>Trọng lượng (gr)</th>
                                        <td>40</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!-- <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Products Infomation</h6>
                                <p></p>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->
<section class="product-reviews">
    <!-- <div class="container" style="background-color: bisque;width: 85%;height: 300px;">
    </div> -->

    <b style="margin-left: 101px;font-size: 16px;">Đánh giá sản phẩm</b><br><br>
    <div class="product-rating-overview">
        <div class="product-rating-overview__briefing">
            <div class="product-rating-overview__score-wrapper">

                <span class="product-rating-overview__rating-score">4.9/5</span>
                <div class="starratingcontain">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <span class="product-rating-overview__rating-score-out-of"></span><br>

            </div>
        </div>
        <div class="product-rating-overview__filters"><div class="product-rating-overview__filter product-rating-overview__filter--active product-rating-overview__filter--all">tất cả</div>
            <div class="product-rating-overview__filter">5 Sao (1)</div>
            <div class="product-rating-overview__filter">4 Sao (1)</div>
            <div class="product-rating-overview__filter">3 Sao (0)</div>
            <div class="product-rating-overview__filter">2 Sao (0)</div><div class="product-rating-overview__filter">1 Sao (0)</div>
            <div class="product-rating-overview__filter product-rating-overview__filter--with-comment">Có Bình luận (3)</div>
            <div class="product-rating-overview__filter product-rating-overview__filter--with-photo">Có hình ảnh / video (0)
            </div>
        </div>
    </div>
    <!-- comment section begin -->
    <div class="comment-reviews">
        <a class="shopee-product-rating__avatar"></a>
        <div class="shopee-avatar">
            <div class="shopee-avatar__placeholder">
                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-headshot">
                    <g>
                        <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10">

                        </circle>
                        <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10">

                        </path>
                    </g>
                </svg>
            </div>
        </div>
        <b>Võ Văn Anh</b><i class="fa fa-check-circle" style="color:  #7fad39;font-size: 20px;margin-left: 5px; margin-right: 5px;"></i><i style="color: #7fad39 ;">Đã mua hàng</i><br>
        <i class="size-time">2020-10-02 07:43</i><br>
        <i>Đánh giá:</i><b class="sao">4/5</b>
        <div class="starrating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i style="color: #edbb0e;" class="fa fa-star-o"></i>
        </div>
        <i>Phân loại hàng:</i> Sách Kinh Tế<br>
        <i>Nhận xét:</i>Giao hàng nhanh...đóng gói cẩn thận..<br>
        <div class="containhuuich" >
            <div class="huuich">
                <i class="fa fa-thumbs-up"></i> <i style="color: #7fad39;">Hữu ích (5)</i>
            </div>
            <i style="float: left;margin-left: 5px;color:#7fad39 ;padding-top: 2px;cursor: pointer;">Gửi trả lời</i>
        </div>
        </a>
    </div>
    <!-- end binh luan 1 -->
    <div class="comment-reviews">
        <a class="shopee-product-rating__avatar"></a>
        <div class="shopee-avatar">
            <div class="shopee-avatar__placeholder">
                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-headshot">
                    <g>
                        <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10">

                        </circle>
                        <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10">

                        </path>
                    </g>
                </svg>
            </div>
        </div>
        <b>Ngô Tấn Tơ</b><i class="fa fa-check-circle" style="color:  #7fad39;font-size: 20px;margin-left: 5px; margin-right: 5px;"></i><i style="color: #7fad39 ;">Đã mua hàng </i><br>
        <i class="size-time">2021-10-12 07:43</i><br>
        <i>Đánh giá:</i><b class="sao">4.5/5</b>
        <div class="starrating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i style="color: #edbb0e;"class="fa fa-star-half-o"></i>
        </div>
        <i>Phân loại hàng:</i> Giáo Dục<br>
        <i>Nhận xét:</i>Tôi rất hài lòng..<br>
        <div class="containhuuich" >
            <div class="huuich">
                <i class="fa fa-thumbs-up"></i> <i style="color: #7fad39;">Hữu ích (5)</i>
            </div>
            <i style="float: left;margin-left: 5px;color:#7fad39 ;padding-top: 2px;cursor: pointer;">Gửi trả lời</i>
        </div>
        </a>
    </div>
    <!-- end binh luan 2 -->
    <div class="comment-reviews">
        <a class="shopee-product-rating__avatar"></a>
        <div class="shopee-avatar">
            <div class="shopee-avatar__placeholder">
                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-headshot">
                    <g>
                        <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10">

                        </circle>
                        <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10">

                        </path>
                    </g>
                </svg>
            </div>
        </div>
        <b>Võ Huy Hành</b><i class="fa fa-check-circle" style="color:  #7fad39;font-size: 20px;margin-left: 5px; margin-right: 5px;"></i><i style="color: #7fad39 ;">Đã mua hàng </i><br>
        <i class="size-time">2020-10-02 07:43</i><br>
        <i>Đánh giá:</i><b class="sao">5/5</b>
        <div class="starrating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
        </div>
        <i>Phân loại hàng:</i> Sách Văn Học<br>
        <i>Nhận xét:</i>Chất lượng tốt, giống như mô tả...<br>

        <div class="containhuuich" >
            <div class="huuich">
                <i class="fa fa-thumbs-up"></i> <i style="color: #7fad39;">Hữu ích (5)</i>
            </div>
            <i style="float: left;margin-left: 5px;color:#7fad39 ;padding-top: 2px;cursor: pointer;">Gửi trả lời</i>
        </div>
        </a>
    </div>
    <!-- end binh luan 3 -->
    <!-- comment section end -->
</section>
<!-- Product Reviews Section End -->

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
<!-- Blog Section End -->
</body>

</html>