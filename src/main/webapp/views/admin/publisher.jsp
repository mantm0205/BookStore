<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Nhà xuất bản</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

</head>

<body>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Nhà xuất bản</h3>
            </div>
            <div class="col-auto text-right">
                <!-- <a class="btn btn-white filter-btn" href="javascript:void(0);" id="filter_search">
                    <i class="fas fa-filter"></i>
                </a> -->
                <a href="admin-add-publisher" class="btn btn-primary add-button ml-3">
                    <i class="fas fa-plus"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- /Page Header -->


    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-center mb-0 datatable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên nhà xuất bản</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.data}" var="x">
                            <tr>
                                <td>${x.id}</td>
                                <td>
                                       ${x.publishername}
                                </td>
                                <td class="text-right">
                                    <a href="admin-edit-publisher?sid=${x.id}" class="btn btn-sm bg-success-light mr-2"> <i
                                            class="far fa-edit mr-1"></i> Sửa</a>
                                    <a  href="#" class="btn btn-outline-danger btn-sm" onclick="showMess(${x.id})"><i
                                            class="fa fa-trash-o"></i> Xóa
                                    </a>

                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <c:set var="page" value="${requestScope.page}"/>
                    <div class="pagination" style="margin-left: 20px; margin-bottom: 10px; margin-top:10px;">
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                            <%--                                    <a href="admin-product?page=${i}">${i}</a>--%>
                            <a style="background-color: #7fad39;color: white;width: 25px;height: 21px;text-align: center;margin-right: 3px;" href="admin-publisher?page=${i}">${i}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    <%--    deleteProduct?sid=${x.id}--%>
    function  showMess(id){
        var option = confirm('Không thể xóa nhà xuất bản khi danh sách sản phẩm có sách chứa nhà xuất bản này. Bạn có chắc chắn xóa không? ');
        if(option === true ) {
            window.location.href = 'admin-delete-publisher?sid='+id;
        }
    }
</script>
</body>

</html>