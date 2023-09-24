<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Road+Rage&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/css/styles.css" />"/>
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/util.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/main.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/select2.min.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/animate.css">
    <link rel="stylesheet" type="text/css"
          href="https://360imagez.s3.ap-southeast-2.amazonaws.com/font-awesome.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://360imagez.s3.ap-southeast-2.amazonaws.com/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="https://360imagez.s3.ap-southeast-2.amazonaws.com/bootstrap.min.css">
</head>

<body>
<jsp:include page="contact.jsp"/>
<div class=e28_459>
    <div class=e28_460>

        <span class="e33_389">Đăng nhập</span>
        <div class="e33_390"></div>
        <span class="e33_391">Logo</span>
        <button class="e33_392 previous round" onclick="history.back()">&#8249;</button>
        <div class=e58_402>
            <div class="e58_403"></div>
        </div>
        <div class=e58_407>
            <div class="e58_408">
                <form:form class="login100-form validate-form" id="loginForm" modelAttribute="login"
                           action="loginProcess" method="post">
                    <table align="center" width="400px">
                        <tr>
                            <td>
                                <div class="wrap-input100 validate-input">
                                    <form:input class="input100" type="text" path="username" name="username"
                                                id="username"/>
                                    <form:label path="username" class="focus-input100"
                                                data-placeholder="Tên đăng nhập"> </form:label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="wrap-input100 validate-input">
                                    <form:password class="input100" path="password" name="pass" id="password"/>
                                    <form:label path="password" class="focus-input100"
                                                data-placeholder="Mật khẩu"> </form:label>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <div class="container-login100-form-btn">
                                    <div class="wrap-login100-form-btn">
                                        <div class="login100-form-bgbtn"></div>
                                        <form:button class="login100-form-btn" id="login" name="login" onclick="history.back()">Đăng nhập</form:button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </form:form>

                <table align="center">
                    <tr>
                        <td style="font-style: italic; color: red;">${message}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/jquery-3.2.1.min.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/animsition.min.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/popper.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/bootstrap.min.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/select2.min.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/moment.min.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/daterangepicker.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/countdowntime.js"></script>
<script src="https://360imagez.s3.ap-southeast-2.amazonaws.com/main.js"></script>


</body>

</html>