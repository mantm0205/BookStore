<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sửa nhà xuất bản</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

</head>

<body>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Sửa nhà xuất bản</h3>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admin-publisher">Nhà xuất bản</a></li>
                    <li class="breadcrumb-item active">Sửa nhà xuất bản</li>
                </ul>
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
                            <!-- Thay đổi code ở đây Thay đổi theo file word -->
                            <!-- Form -->
                            <form action="admin-edit-publisher" method="post">


                                <div class="form-group">
                                    <label>ID</label>
                                    <input class="form-control" type="text" name="id" value="${st.id}" readonly>
                                </div>
                                <div class="form-group">
                                    <label>Nhà xuất bản</label>
                                    <input class="form-control" type="text" name="name"
                                           value="${st.publishername}">
                                </div>

                                <div class="mt-4">
                                    <button class="btn btn-primary" type="submit">Lưu thay đổi</button>
                                    <a href="admin-publisher" class="btn btn-link">Hủy</a>
                                </div>
                            </form>
                            <!-- /Form -->
                            <!-- Thêm vào nội dung ở đây -->
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
