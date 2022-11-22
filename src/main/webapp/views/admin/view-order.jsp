<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Chi tiết đơn hàng</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">


</head>

<body>
<div class="content container-fluid">

    <!-- Page Header -->
    <div class="page-header">
        <div class="row">
            <div class="col">
                <h3 class="page-title">Chi tiết đơn hàng</h3>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="total-report.html">Đanh sách đơn đặt hàng</a></li>
                    <li class="breadcrumb-item active">Xem danh sách đơn đặt hàng</li>
                </ul>
            </div>

        </div>
    </div>
    <!-- /Page Header -->

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header" data-toggle="collapse" data-target="#gener-info" role="button"
                     aria-expanded="false" aria-controls="gener-info">
                    <h4 class="card-title">Thông tin chung</h4>
                </div>
                <div class="collapse card-body" id="gener-info">
                    <form action="#">
                        <div class="form-group row">
                            <label class="col-md-3">ID đơn hàng</label>
                            <div class="col-md-9">
                                1
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Mã người mua</label>
                            <div class="col-md-9">
                                customer-01
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Người mua</label>
                            <div class="col-md-9">
                                Nguyễn Văn An
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Trạng thái</label>
                            <div class="col-md-9">
                                Edit code here
                            </div>
                        </div>
                        <!-- <div class="form-group row">
                            <label class="col-md-3">Tổng tiền</label>
                            <div class="col-md-9">
                                125.000 VNĐ
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Tiền vận chuyển</label>
                            <div class="col-md-9">
                                15.000 VNĐ
                            </div>
                        </div> -->
                        <div class="form-group row">
                            <label class="col-md-3">Thành tiền</label>
                            <div class="col-md-9">
                                140.000 VNĐ
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Phương thức thanh toán</label>
                            <div class="col-md-9">
                                Tiền mặt
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Trạng thái thanh toán</label>
                            <div class="col-md-9">
                                Chờ thanh toán
                            </div>
                        </div>


                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header" data-toggle="collapse" data-target="#customer-info" role="button"
                     aria-expanded="false" aria-controls="customer-info">
                    <h4 class="card-title">Địa chỉ giao hàng</h4>
                </div>
                <div class="collapse card-body" id="customer-info">
                    <form action="#">
                        <div class="form-group row">
                            <label class="col-md-3">Tên người nhận</label>
                            <div class="col-md-9">
                                Nguyễn Văn An
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Email</label>
                            <div class="col-md-9">
                                nguyenvanan@gmail.com
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Số điện thoại</label>
                            <div class="col-md-9">
                                0335126487
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Địa chỉ</label>
                            <div class="col-md-9">
                                Phường Linh Trung, Thủ Đức, Ho Chi Minh City
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Ghi chú</label>
                            <div class="col-md-9">
                                Không
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card" data-toggle="collapse" data-target="#product-info" role="button" aria-expanded="false"
                 aria-controls="product-info">
                <div class="card-header">
                    <h4 class="card-title">Sản phẩm mua</h4>
                </div>
                <div class="collapse card-body" id="product-info">
                    <form action="#">
                        <div class="form-group row">
                            <label class="col-md-3">ID sản phẩm</label>
                            <div class="col-md-9">
                                1
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Tên sản phẩm</label>
                            <div class="col-md-9">
                                Nhà Giả Kim
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Số lượng</label>
                            <div class="col-md-9">
                                1
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3">Giá</label>
                            <div class="col-md-9">
                                65.000 VNĐ
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

</div>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>

</html>
