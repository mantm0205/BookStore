
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4" style="margin: 0 auto">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3>
                                <i class="fa fa-lock fa-4x"></i>
                            </h3>
                            <h2 class="text-center">Enter OTP </h2>
                            <%
                            if (request.getAttribute("message") != null){
                                out.print("<p class= text-danger ml-1'>" + request.getAttribute("message") +"</p>");
                            }
                            %>

                    <div class="panel-body">
                        <form id="register-form" action="otp" role="form" autocomplete="on" class="form" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i> </span>
                                    <input class="form-control" type="text" required="required" name="otp">
                                </div>
                            </div>
                            <div class="form-group">
                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Check OTP" type="submit">
                            </div>
                            <input type="hidden" class="hide" name="token" id="token" value="">
                        </form>
                    </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
  </div>
</body>
</html>
