<%--
  Created by IntelliJ IDEA.
  User: DUNGDUY
  Date: 3/11/2022
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BOOKSTORE NLU | Đăng Nhập</title>

    <style>
        .capt {
            background-color: grey;
            width: 300px;
            height: 100px;
            display: none;

        }

        #mainCaptcha {
            position: relative;
            left: 60px;
            top: 5px;
            background: #d8d8d8;
        }

        #refresh {
            position: relative;
            left: 230px;
            width: 30px;
            height: 30px;
            bottom: 45px;
            background: #989c9e;
        }

        #txtInput, #Button1 {
            padding: 12px 20px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            position: relative;
            left: 40px;
            bottom: 40px;
        }
    </style>
</head>
<body>
<div class="moda fad" id="myModa" tabindex="-" role="dialo" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <form id="login" action="<c:url value="/Dang-nhap"/>" method="POST" name="myForm" onsubmit="return ValidCaptcha()">
            <div class="modal-content clearfix">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <div class="modal-body">
                    <h3 class="title"> Đăng nhập </h3>
                    <p class="description"></p>
                    <div class="form-group">
                        <span class="input-icon"><i class="fa fa-user"></i></span>
                        <input type="text" name="username" id="username" class="form-control"
                               placeholder="Tên tài khoản"
                               value="<%= request.getAttribute("username") == null
                                   ? "" : request.getAttribute("username") %>">
                        <label style="color:#F00;" for="username" class="error" id="errUsername">
                            <%=request.getAttribute("uname-err") == null ? ""
                                    : request.getAttribute("uname-err")%>
                        </label>
                    </div>
                    <div class="form-group">
                        <span class="input-icon"><i class="fa fa-key"></i></span>
                        <%--                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password">--%>
                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password"
                               id="password">
                        <label style="color:#F00;" for="password" class="error" id="errPassword">
                            <%=request.getAttribute("pwd-err") == null ? "" : request.getAttribute("pwd-err")%>
                        </label>
                    </div>
<%--                    <label style="color:#F00;" for="vehicle1" class="error" id="errPassCaptchar">--%>
<%--                        <%=request.getAttribute("pwd-captchar") == null ? "" : request.getAttribute("pwd-captchar")%>--%>
<%--                    </label>--%>
                    <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"   onclick="hideCaptcha() " >

                    <label for="vehicle1"> Tôi không phải người máy</label><br>
                    <div>
                        <div class="capt" id="hideCaptcha" style="display: none" >
                            <div style="display: flex">
                                <h2 type="text" id="mainCaptcha" style="background: #d8d8d8;"></h2>
                                <p><input type="button" id="refresh" onclick="Captcha();" style="margin-top: 10px;margin-left: 20px;" value="ReCaptcha"/></p>

                            </div>
                            <input type="text" id="txtInput" class="form-control"/>
<%--                            <input id="Button1" type="button" value="Check" onclick="alert(ValidCaptcha());"/>--%>
                        </div>
                    </div>
                    <div class="form-group checkbox">
                        <input type="checkbox">
                        <label>Lưu</label>
                    </div>
                    <a href="forgot" class="forgot-pass">Quên mật khẩu?</a>
                    <button id="show12" class="btn" type="submit"  disabled>Đăng nhập</button>


                </div>
                <a href="https://www.facebook.com/dialog/oauth?client_id=610447636925613&redirect_uri=https://localhost:8080/BookStore/login-facebook">Login with FaceBook</a>
            </div>

        </form>
    </div>
</div>

<script>
    function Captcha() {
        var alpha = new Array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
        var i;
        for (i = 0; i < 6; i++) {
            var a = alpha[Math.floor(Math.random() * alpha.length)];
            var b = alpha[Math.floor(Math.random() * alpha.length)];
            var c = alpha[Math.floor(Math.random() * alpha.length)];
            var d = alpha[Math.floor(Math.random() * alpha.length)];
            var e = alpha[Math.floor(Math.random() * alpha.length)];
            var f = alpha[Math.floor(Math.random() * alpha.length)];
            var g = alpha[Math.floor(Math.random() * alpha.length)];
        }
        var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' ' + f + ' ' + g;
        document.getElementById("mainCaptcha").innerHTML = code
        document.getElementById("mainCaptcha").value = code
    }

    function ValidCaptcha() {
        var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
        var string2 = removeSpaces(document.getElementById('txtInput').value);
        console.log("ValidCaptcha",string1)
        if (string1 == string2) {

            return true;
        }else{
            alert("Nhập sai Captcha")
            return false;
        }

    }

    function removeSpaces(string) {
        return string.split(' ').join('');
    }

    function hideCaptcha(){

        // if (document.getElementById("vehicle1").checked = true){
        //     document.getElementById("show12").setAttribute("disabled");
        // }else {
        //     document.getElementById("show12").removeAttribute("disabled");

            var checkBox = document.getElementById("vehicle1");
            var element = document.getElementById("hideCaptcha");
            if (checkBox.checked == true) {
                // var element = document.getElementById("hideCaptcha");
                element.style.display = "block";
                document.getElementById("show12").removeAttribute("disabled");
            } else {
                element.style.display = "none";
                document.getElementById("show12").setAttribute("disabled","");
            }
            Captcha();
        // }

    }


</script>



</body>
</html>
