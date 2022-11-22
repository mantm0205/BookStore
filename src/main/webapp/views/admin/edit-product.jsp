
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="vi-VN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <title>Sửa sản phẩm</title>
    <link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
</head>

<body>
        <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
                <div class="row">
                    <div class="col">
                        <h3 class="page-title">Sửa sản phẩm</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="admin-product">Sản phẩm</a></li>
                            <li class="breadcrumb-item active">Sửa sản phẩm</li>
                        </ul>
                    </div>

                        </a>
                        <a href=admin-add-product class="btn btn-primary add-button ml-3">
                            <i class="fas fa-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->

            <div class="row mr-1 ml-1">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">

                                <form action="admin-edit-product" method="post">

                                    <div class="form-group">
                                        <label>Mã </label>
                                        <input class="form-control" name="id" type="text" value="${st.id}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Tên sản phẩm</label>
                                        <input class="form-control" type="text" name="name" value="${st.name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="authorid">Tác giả</label>
                                        <select id="authorid" class="form-control" name="authorid"  value="${st.authorid}" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;">
                                            <c:forEach items="${listA}" var="x">
                                                <option value="${x.id}">${x.authorname}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="categoryid">Danh mục:</label>
                                        <select id="categoryid" class="form-control" value="${st.categoryid}" name="categoryid" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;" >
                                            <c:forEach items="${listC}" var="x">
                                                <option value="${x.id}">${x.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="publisherid">Nhà xuất bản</label>
                                        <select  id="publisherid" class="form-control" name="publisherid" value="${st.publisherid}" style="width: 100%;height: 40px;border: 1px solid #ddd;border-radius: 0.25rem;">
                                            <c:forEach items="${listP}" var="x">
                                                <option value="${x.id}">${x.publishername}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
<%--                                    <div class="form-group">--%>
<%--                                        <label>Tác phẩm</label>--%>
<%--                                        <input class="form-control" type="text" value="${st.authorid}" name="authorid">--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <label for="categoryid">Danh mục </label>--%>
<%--                                        <select id="categoryid" name="categoryid">--%>
<%--                                            <option value="${st.categoryid}">Volvo</option>--%>
<%--                                            <option value="1">Saab</option>--%>
<%--                                            <option value="2">Opel</option>--%>
<%--                                            <option value="3">Audi</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>

<%--                                    <div class="form-group">--%>
<%--                                        <label for="publisherid">Nhà xuất bản</label>--%>
<%--                                        <select  id="publisherid" name="publisherid">--%>
<%--                                            <option value="${st.publisherid}">Volvo</option>--%>
<%--                                            <option value="4">Saab</option>--%>
<%--                                            <option value="5">Opel</option>--%>
<%--                                            <option value="6">Audi</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
                                    <div class="form-group">
                                        <label>Ảnh</label>
                                        <input class="form-control" type="text" value="${st.img}" name="img">
                                    </div>
                                    <div class="form-group">
                                        <label>Số lượng</label>
                                        <input class="form-control" type="text" value="${st.quantity}" name="quantity">
                                    </div>
                                    <div class="form-group">
                                        <label>Gia</label>
                                        <input class="form-control" type="text" value="${st.price}" name="price">
                                    </div>
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <input  class="form-control" value="${st.description}" type="text" name="description"></input>
                                    </div>
                                    <div class="mt-4">
                                        <button class="btn btn-primary" type="submit">Lưu thay đổi</button>
                                        <a href="admin-product" class="btn btn-link">Hủy</a>
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
