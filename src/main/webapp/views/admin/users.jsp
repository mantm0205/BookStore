<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Người dùng</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

</head>

<div>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Người dùng</h3>
            </div>
            <div class="col-auto text-right">
                <a href="admin-add-user" class="btn btn-primary add-button ml-3">
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
                                <th>Tài khoản</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.data}" var="x">
                            <tr>
                                <td>${x.username}</td>
                                <td>${x.fullname}</td>
                                <td>${x.email}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <c:set var="page" value="${requestScope.page}"/>
                        <div class="pagination" style="margin-left: 20px; margin-bottom: 10px; margin-top:10px;">
                            <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                <%--                                    <a href="admin-product?page=${i}">${i}</a>--%>
                                <a style="background-color: #7fad39;color: white;width: 25px;height: 21px;text-align: center;margin-right: 3px;" href="admin-user?page=${i}">${i}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    <%--    deleteProduct?sid=${x.id}--%>
    function  showMess(username){
        var option = confirm('Bạn có chắc chắn xóa không? ');
        if(option === true ) {
            window.location.href ='admin-delete-user?susername='+username;
        }
    }
</script>
</body>

</html>