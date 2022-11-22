<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

</head>

<body>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Sản phẩm</h3>
            </div>
            <div class="col-auto text-right">
                <a href="admin-add-product" class="btn btn-primary add-button ml-3">
                    <i class="fas fa-plus"></i>
                </a>
            </div>
        </div>
        <div class="row">
            <form class="example " action="admin-search-product" method="get" >
                <input style="width: 500px;border: 1px #ffffff;height: 45px;margin-left: 15px;" type="text" placeholder="Tìm kiếm tên sách" name="key">
                <button style="height: 45px; width: 45px; background: yellowgreen;color: white;" type="submit" class="btn btn-white"><i class="fa fa-search"></i></button>
            </form>
        </div>
    </div>
    <!-- /Page Header -->


    <div class="row">
        <div class="col-md-12 d-flex">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">

                        <table class="table table-center table-hover mb-0 datatable">
                            <!-- Thay đổi code ở đây Thay đổi theo file word table-hover mb-0 datatable-->
                            <thead>
                            <tr>
                                <th>ID</th>
<%--                                <th>Anh</th>--%>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>ID danh mục </th>
                                <th>ID nhà xuất bản</th>
                                <th class="text-right"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.data}" var="x">
                            <tr>

<%--                                <td>--%>
<%--                                    <img class="rounded service-img mr-1" src="assets/img/categories/powervsforce.jpg"--%>
<%--                                         alt="Hình ảnh danh mục"></td>--%>
                                <td>${x.id}</td>
                                <td>${x.name}</td>
                                <td>${x.price}<small> VND</small></td>
                                <td>${x.quantity}</td>
                                <td>${x.categoryid}</td>
                                <td>${x.publisherid}</td>
                                <td class="text-right">
                                    <a href="admin-edit-product?sid=${x.id}" class="btn btn-sm bg-success-light mb-2"> <i
                                            class="far fa-edit mr-1"></i> Sửa</a>
                                    <a  href="#" class="btn btn-outline-danger btn-sm" onclick="showMess(${x.id})"><i
                                            class="fa fa-trash-o"></i> Xóa
                                    </a>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <c:set var="k" value="${requestScope.key}"></c:set>
                        <c:set var="page" value="${requestScope.page}"/>
                            <div class="pagination" >
                                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
<%--                                    <a href="admin-product?page=${i}">${i}</a>--%>
                                    <a style="background-color: #7fad39;color: white;width: 25px;height: 21px;text-align: center;margin-right: 3px;" href="admin-search-product?page=${i}&key=${key}">${i}</a>
                                </c:forEach>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    <%--    deleteProduct?sid=${x.id}--%>
    function  showMess(id){
        var option = confirm('ban co chan chan xoa khong ?');
        if(option === true ) {
            window.location.href = 'deleteProduct?sid='+id;
        }
    }
</script>

</body>
</html>

