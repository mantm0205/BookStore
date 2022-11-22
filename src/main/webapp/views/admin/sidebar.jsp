<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/8/2021
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title></title>
	<link href="assets/img/icon/icon-logo.png" rel="shortcut icon">
	<!-- Bootstrap CSS -->

</head>

<body>
<!-- Sidebar -->
<div class="sidebar" id="sidebar">
	<div class="sidebar-logo">
		<a href="dashboard.jsp">
			<img src="assets/img/logo-icon.png" class="img-fluid" alt="">
		</a>
	</div>
	<div class="sidebar-inner">
		<div id="sidebar-menu" class="sidebar-menu">
			<ul>
				<li >
					<a href="admin-home" ><span>Tổng quan</span></a>
				</li>
				<li class="submenu">
					<a href="admin-product"> <span>Sản phẩm</span> </a>
				</li>
				<li class="submenu">
					<a href="admin-category"> <span>Danh mục</span> </a>
				</li>
				<li class="submenu">
					<a href="admin-publisher"> <span>Nhà xuất bản</span> </a>
				</li>
				<li class="submenu">
					<a href="admin-user"> <span>Người dùng</span> </a>
				</li>
				<li class="submenu">
					<a href="admin-author"> <span>Tác giả</span> </a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- /Sidebar -->

</body>

</html>