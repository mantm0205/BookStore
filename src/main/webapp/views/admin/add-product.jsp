
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Thêm sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
    <!-- Bootstrap CSS -->

    <!-- Select CSS -->
    <link rel="stylesheet" href="assets/css/select2.min.css">

    <script src="assets/js/tinymce/tinymce.min.js"></script>
    <script src="assets/js/tinymce.js"></script>

</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Thêm sản phẩm</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="product.html">Sản phẩm</a></li>
                            <li class="breadcrumb-item active">Thêm sản phẩm</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="admin-add-product" method="post">

                                   <p class="text-danger">${mess}</p>

                                <div class="form-group">
                                    <label>Mã </label>
                                    <input class="form-control" name="id" type="text" value="">
                                </div>
                                <div class="form-group">
                                    <label>Tên sản phẩm</label>
                                    <input class="form-control" type="text" name="name" value="">
                                </div>
                                <div class="form-group">
                                    <label for="authorid">Tác giả</label>
                                    <select id="authorid" name="authorid" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;">
                                        <c:forEach items="${listA}" var="x">
                                            <option value="${x.id}">${x.authorname}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="categoryid">Danh mục:</label>
                                    <select id="categoryid" name="categoryid" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;" >
                                        <c:forEach items="${listC}" var="x">
                                            <option value="${x.id}">${x.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="publisherid">Nhà xuất bản</label>
                                    <select  id="publisherid" name="publisherid" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;">
                                        <c:forEach items="${listP}" var="x">
                                        <option value="${x.id}">${x.publishername}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Ảnh</label>
                                    <input class="form-control" type="text" name="img">
                                </div>
                                <div class="form-group">
                                    <label>Số lượng</label>
                                    <input class="form-control" type="text" value="" name="quantity">
                                </div>
                                <div class="form-group">
                                    <label>Gia</label>
                                    <input class="form-control" type="text" value="" name="price">
                                </div>
                                <div class="form-group">
                                    <label>Mô tả</label>
                                    <textarea style="height: 100px;" class="form-control" type="text" name="description"></textarea>
                                </div>

                                <div class="mt-4">
                                    <button class="btn btn-primary" type="submit">Lưu </button>
                                    <a href="admin-product" class="btn btn-link">Hủy</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- Select2 JS -->
<script src="assets/js/select2.min.js"></script>



</body>

</html>
