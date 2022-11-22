
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Thên người dùng</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
    <!-- Bootstrap CSS -->


</head>

<body>
    <div class="content container-fluid">
        <div class="row">
            <div class="col-xl-8 offset-xl-2">

                    <!-- Page Header -->
                <div class="page-header">
                    <div class="row">
                        <div class="col">
                            <h3 class="page-title">Thên người dùng</h3>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="admin-user">Người dùng</a></li>
                                <li class="breadcrumb-item active">Thêm người dùng</li>
                            </ul>
                        </div>
                    </div>
                </div>
                    <!-- /Page Header -->

                <div class="card">
                    <div class="card-body">
                            <!-- Form -->
                        <form action="admin-add-user" method="post">
                            <p class="text-danger">${mess}</p>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Tên tài khoản</label>
                                <div class="col-md-10">
                                    <input type="text" name="username" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Họ và tên</label>
                                <div class="col-md-10">
                                    <input type="text" name="fullname"class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Mật khẩu</label>
                                <div class="col-md-10">
                                    <input type="password" name="password" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Email</label>
                                <div class="col-md-10">
                                    <input type="email" name="email" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Số điện thoại</label>
                                <div class="col-md-10">
                                    <input type="tel" name="phone" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-md-2">Địa chỉ</label>
                                <div class="col-md-10">
                                    <input type="text" name="address" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sex">Giới tính</label>
                                <select id="sex" name="sex" style="width: 82%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;margin-left: 40px">

                                    <option value="Nữ">Nữ</option>
                                    <option value="Nam">Nam</option>

                                </select>
                            </div>
                            <div class="mt-4">
                                <button class="btn btn-primary" type="submit">Thêm</button>
                                <a href="admin-user" class="btn btn-link">Hủy</a>
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
