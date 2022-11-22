
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Sửa thông tin cá nhân</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/favicon.png">

</head>

<body>
        <div class="content container-fluid">
            <div class="row">
                <div class="col-xl-8 offset-xl-2">

                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="row">
                            <div class="col">
                                <h3 class="page-title">Sửa thông tin cá nhân</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="admin-profile.html">Thông tin cá nhân</a></li>
                                    <li class="breadcrumb-item active">Sửa thông tin admin</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <div class="card">
                        <div class="card-body">

                            <!-- Form -->
                            <form action="#">
                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">Tên</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">Địa Chỉ</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" value="ĐH Nông Lâm, Thủ Đức" disabled>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">SĐT</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" value="032 725 1547" >
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">Email</label>
                                    <div class="col-md-10">
                                        <input type="email" class="form-control" value="van@gmail.com" >
                                    </div>
                                </div>
                                <div class="mt-4">
                                    <button class="btn btn-primary" type="submit">Lưu</button>
                                    <a href="admin-profile.html" class="btn btn-link">Hủy</a>
                                </div>
                            </form>
                            <!-- /Form -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>