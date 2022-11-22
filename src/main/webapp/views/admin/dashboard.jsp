<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Tổng quan</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col-12">
                        <h3 class="page-title">Dashboard</h3>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row">
                <div class="col-xl-4 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-user"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>${countUser}</h3>
                                    <h6 class="text-muted">Người dùng</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="fas fa-qrcode"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>${countProduct}</h3>
                                    <h6 class="text-muted">Sản phẩm</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-sm-6 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="dash-widget-header">
									<span class="dash-widget-icon bg-primary">
										<i class="far fa-address-card"></i>
									</span>
                                <div class="dash-widget-info">
                                    <h3>${countPublisher}</h3>
                                    <h6 class="text-muted">Nhà xuất bản</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 d-flex">

                    <!-- Recent Bookings  card-table flex-fill-->
                    <div class="card card-table flex-fill">
                        <div class="card-header">
                            <h4 class="card-title">Danh sách tồn kho</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-center ">
                                    <thead>
                                    <tr>
                                        <th>Mã</th>
                                        <th>Tên sách</th>
                                        <th>Số lượng</th>
                                        <th>Giá tiền</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${requestScope.data}" var="x">
                                    <tr>
                                        <td>
                                             ${x.id}
                                        </td>
                                        <td c>${x.name}</td>
                                        <td>
                                            <div >${x.quantity}</div>
                                        </td>
                                        <td>
                                            <div >${x.price}<small> VND</small></div>
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
                                    <a style="background-color: #7fad39;color: white;width: 25px;height: 21px;text-align: center;margin-right: 3px;" href="admin-home?page=${i}">${i}</a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- /Recent Bookings -->
                </div>
            </div>
        </div>

</body>

</html>