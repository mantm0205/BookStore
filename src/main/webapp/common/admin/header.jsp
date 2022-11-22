<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 2/28/2022
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

    <!-- Header -->
    <div class="header">
        <div class="header-left">
            <a href="dashboard.jsp" class="logo logo-small">
                <img src="assets/img/logo-icon.png" alt="Logo" width="30" height="30">
            </a>
        </div>
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fas fa-align-left"></i>

        </a>
        <a class="mobile_btn" id="mobile_btn" href="javascript:void(0);">
            <i class="fas fa-align-left"></i>
        </a>

        <ul class="nav user-menu">

            <!-- User Menu -->
            <li class="nav-item dropdown">

                    <a class="dropdown-item" href="TrangChu">Đăng xuất</a>

            </li>
            <!-- /User Menu -->

        </ul>
    </div>
    <!-- /Header -->