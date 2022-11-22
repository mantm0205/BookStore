<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Đăng nhập</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">

    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/favicon.png">

</head>

<body>
<div class="login-page">
    <div class="login-body container">
        <div class="loginbox">
            <div class="login-right-wrap">
                <div class="account-header">
                    <div class="account-logo text-center mb-4">
                        <a href="dashboard.html">
                            <img src="assets/img/logo-icon.png" alt="" class="img-fluid">
                        </a>
                    </div>
                </div>
                <div class="login-header">
                    <h3>Login </h3>
                    <p class="text-muted">Truy cập vào dashboard</p>
                </div>
                <form action="dashboard.html">
                    <div class="form-group">
                        <label class="control-label">Username</label>
                        <input class="form-control" type="text" placeholder="Nhập tên người dùng">
                    </div>
                    <div class="form-group mb-4">
                        <label class="control-label">Password</label>
                        <input class="form-control" type="password" placeholder="Nhập mật khẩu">
                    </div>
                    <div class="text-center">
                        <button class="btn btn-primary btn-block account-btn" type="submit">Đăng nhập</button>
                    </div>
                </form>

                <div class="text-center forgotpass mt-4"><a href="forgot-password.html">Quên mật khẩu?</a></div>
                <div class="login-or">
                    <span class="or-line"></span>
                    <span class="span-or">or</span>
                </div>

                <!-- Social Login -->
                <div class="social-login">
                    <span>Đăng nhập bằng</span>
                    <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a href="#" class="google"><i
                        class="fab fa-google"></i></a>
                </div>
                <!-- /Social Login -->

                <!-- <div class="text-center dont-have">Don’t have an account? <a href="register.html">Đăng kí</a></div> -->
            </div>
        </div>
    </div>
</div>

</body>

</html>