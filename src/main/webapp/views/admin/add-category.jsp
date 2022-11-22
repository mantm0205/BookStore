<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Thêm danh mục</title>
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
									<h3 class="page-title">Thêm danh mục</h3>
									<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="admin-category">Danh mục</a></li>
										<li class="breadcrumb-item active">Thêm danh mục</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- /Page Header -->
						
						<div class="card">
							<div class="card-body">
							
								<!-- Form -->
								<form action="admin-add-category" method="post">
									<p class="text-danger">${mess}</p>
                                    <div class="form-group row">
                                        <label class="col-form-label col-md-2">ID</label>
                                        <div class="col-md-10">
                                            <input type="text" name="id" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-form-label col-md-2">Tên danh mục</label>
                                        <div class="col-md-10">
                                            <input type="text" name="name" class="form-control">
                                        </div>
									</div>


                                    <div class="mt-4">
										<button class="btn btn-primary" type="submit">Thêm</button>
										<a href="admin-category" class="btn btn-link">Hủy</a>
									</div>
                                </form>
								<!-- /Form -->
								<!-- Form -->
								
							</div>
						</div>
					</div>
				</div>
			</div>

</body>

</html>