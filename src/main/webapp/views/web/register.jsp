<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/common/taglib.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Đăng ký</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

</head>

<body>

<div class="register-center">
    <div class="container">
        <div class="title">Đăng Ký</div>
        <div class="content">


            <h2><%=request.getAttribute("notyfi")==null?"":request.getAttribute("notyfi")%></h2>
            <form id="registry" action="<c:url value="/dang-ky"/> " method="POST" name="myForm"
                  onsubmit="return validateForm()">

                <div class="user-details">
                    <div class="input-box form-group">
                        <span class="details">Họ Và Tên</span>
                        <input type="text" name="fullname" id="fullname" placeholder="Tên của bạn"

                               value="<%=request.getAttribute("fullname")==null?"":request.getAttribute("fullname")%>"/>
                        <label id="errFullname" style="color: red">
                            <%=request.getAttribute("entry") == null ? ""
                                    : request.getAttribute("entry")%>
                        </label>

                    </div>
                    <div class="input-box form-group">
                        <span class="details">Tên Tài Khoản</span>
                        <input type="text" name="username" id="username" placeholder="Nhập tên tài khoản"

                               value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>
                        <label id="errUsername" style="color: red">
                            <%=request.getAttribute("uname-err") == null ? "" : request.getAttribute("uname-err")%>
                        </label>

                    </div>
                    <div class="input-box form-group">
                        <span class="details">Email</span>
                        <input type="email" name="email" id="email" placeholder="Email của bạn"
                               value="<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>">

                        <label id="errEmail" style="color: red"><%=request.getAttribute("email-err") == null ? ""
                                : request.getAttribute("email-err")%>
                        </label>

                    </div>
                    <div class="input-box form-group">
                        <span for="phone" class="details">Số điện thoại</span>

                        <input name="phone" type="text" id="phone" placeholder="Nhập số điện thoại"
                               value="<%=request.getAttribute("phone")==null?"":request.getAttribute("phone")%>">
                        <label id="errPhone">
                            <%= request.getAttribute("entry") == null ? "" : request.getAttribute("entry") %>


                        </label>
                    </div>
                    <div class="input-box form-group">
                        <span class="details">Mật khẩu</span>
                        <input type="password" name="password" id="password" placeholder="Nhập mật khẩu"
                               value="<%=request.getAttribute("password")==null?"":request.getAttribute("password")%>">
                        <label id="errPassword" style="color: red">
                            <%= request.getAttribute("entry") == null ? "" : request.getAttribute("entry") %></label>

                    </div>
                    <div class="input-box form-group">
                        <span class="details">Nhập lại mật khẩu</span>
                        <input type="password" name="confirmPassword" id="confirmPassword"
                               value="<%=request.getAttribute("confirmPassword")==null?"":request.getAttribute("confirmPassword")%>"
<%--                               type="password" name="confirmPassword" id="confirmPassword"--%>
                               placeholder="Nhập lại mật khẩu">

                        <label id="errConfirm" style="color: red">
                            <%= request.getAttribute("entry") == null ? "" : request.getAttribute("entry") %></label></label>
                    </div>
                    <div class="input-box" style="width: -webkit-fill-available;">
                        <span class="details">Địa chỉ</span>
                        <input type="text" name="address" id="address" placeholder="Địa chỉ"
                               value="<%=request.getAttribute("address")==null?"":request.getAttribute("address")%>"/>
                        <label id="errAddress" style="color: red">
                            <%= request.getAttribute("entry") == null ? "" : request.getAttribute("entry") %></label>
                        </label>
                    </div>
                </div>
                <div style="display: flex">
<%--                    <div class="group-input" style="width: 50%">--%>
<%--                        <label for="gender">Giới tính *</label>--%>
<%--                        <select id="gender" name="gender">--%>
<%--                            <option value="">--Chọn giới tính--</option>--%>
<%--                            <option value="male">Nam</option>--%>
<%--                            <option value="female">Nữ</option>--%>
<%--                            <option value="other">Khác</option>--%>
<%--                        </select>--%>
<%--                        <label style="color: #F00" class="error" for="gender"></label>--%>
<%--                    </div>--%>
<%--                    <div class="group-input" style="margin-left: 20px">--%>
<%--                        <label for="address" style="margin-right: 12px">Địa chỉ *</label>--%>
<%--                        <input type="text" name="address" id="address" style="width: 230px">--%>
<%--                        &lt;%&ndash;                           value="<%=request.getAttribute("address")==null?"":request.getAttribute("address")%>">&ndash;%&gt;--%>
<%--                        <label style="color: #F00" class="error" for="address"></label>--%>
<%--                    </div>--%>
<%--                    <div class="input-box">--%>
<%--                        <span class="details">Địa chỉ</span>--%>
<%--                        <input type="text" name="address" id="address" placeholder="Địa chỉ"--%>
<%--                               value="<%=request.getAttribute("address")==null?"":request.getAttribute("address")%>"/>--%>
<%--                        <label id="errAddress" style="color: red">--%>
<%--                            <%= request.getAttribute("entry") == null ? "" : request.getAttribute("entry") %></label>--%>
<%--                        </label>--%>
<%--                    </div>--%>
                </div>
                <div class="button">
                    <input type="submit" value="Đăng Ký" class="form-submit">
                </div>
            </form>
        </div>
    </div>

</div>
    <script>
        function validateForm(){
            var fullname = document.myForm.fullname.value;
            var phone = document.myForm.phone.value;
            var email = document.myForm.email.value;
            var password = document.myForm.password.value;
            var confirmPassword = document.myForm.confirmPassword.value;
            var address = document.myForm.address.value;
            var errFullname = document.getElementById("errFullname");
            var errPhone = document.getElementById("errPhone");
            var errEmail = document.getElementById("errEmail");
            var errPass = document.getElementById("errPassword");
            var errConfirm = document.getElementById("errConfirm");
            var errAddress = document.getElementById("errAddress");
            var pass = document.getElementsByClassName("password");
            // if(pass.length() < 6){
            //     alert("in ra bao nhiêu:" + pass.length());
            // }

            if (fullname == "" || fullname == null){
                errFullname.innerHTML = '<label style="color: red">Họ và tên không thể bỏ trống </label>';
                return  false;
            }else{
                errFullname.innerHTML = '<label style="color: red"></label>';
            }
            if (phone == "" || phone == null){
                errPhone.innerHTML = '<label style="color: red">Số điện thoại không thể bỏ trống </label>';
                return  false;
            }else{
                errPhone.innerHTML = '<label style="color: red"></label>';
            }
            if (email == "" || email == null){
                errEmail.innerHTML = '<label style="color: red">Email không thể bỏ trống </label>';
                return  false;
            }else{
                errEmail.innerHTML = '<label style="color: red"></label>';
            }

            if (password == ""|| phone == null ){
                errPass.innerHTML = '<label style="color: red">Mật khẩu không thể bỏ trống </label>';
                return  false;
            }else{
                errPass.innerHTML = '<label style="color: red"></label>';
            }

            if (confirmPassword == "" || confirmPassword == null){
                errConfirm.innerHTML = '<label style="color: red">Xác nhận mật khẩu không thể bỏ trống </label>';
                return  false;
            } else{
                errConfirm.innerHTML = '<label style="color: red"></label>';
            }
            if (password != confirmPassword){
                errConfirm.innerHTML = '<label style="color: red">Mật khẩu không khớp </label>';
                return  false;
            } else{
                errConfirm.innerHTML = '<label style="color: red"></label>';
            }
            if (address == ""|| address == null){
                errAddress.innerHTML = '<label style="color: red">Địa chỉ không thể bỏ trống </label>';
                return  false;
            }else{
                errAddress.innerHTML = '<label style="color: red"></label>';

            }
            // if (password.length() < 6){
            //     errPass.innerHTML = '<label style="color: red">Mật khẩu phải trên 6 ký tự </label>';
            //     return  false;
            // }else{
            //     errPass.innerHTML = '<label style="color: red"></label>';
            // }
            // errFullname.innerHTML = '<label style="color: red">Mật khẩu phải trên 6 ký tự </label>';
            //     return true;

        }

    </script>

</body>

</html>