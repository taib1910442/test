<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Margarine&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/css/styles.css" />"/>
    <style type="text/css">
        /*
                    Figma Background for illustrative/preview purposes only.
                    You can remove this style tag with no consequence
                  */
        body {
            background: #E5E5E5;
        }
        html, body{
            width: 100%;
            height: 100%;
        }
    </style>
</head>

<body>
<jsp:include page="WEB-INF/jsp/contact.jsp"/>
    <div class="e29_252"></div>
    <div class="center-element"><div class="e29_253"></div></div>
    <a class="e76_1785" href="search">Khám phá</a>
    <div class="e29_254"></div>
    <div class="e29_255"></div><span class="e29_371">Chìm vào Cần Thơ trong thực tế ảo</span><span class="e29_372">Bắt
      đầu một hành trình khó quên qua đồng bằng sông Cửu Long nhộn nhịp mà không cần rời khỏi nhà của bạn. Công nghệ
      thực tế ảo (VR) tiên tiến của chúng tôi giúp du lịch Cần Thơ trở nên sống động hơn bao giờ hết.</span>
    <div class="e29_256"></div><span class="e29_341">Dạo chơi trên những con phố sôi động và hòa mình vào văn hóa địa
      phương</span><span class="e29_342">Di chuyển qua những con phố sôi động và những con hẻm khuất của Cần Thơ, đắm
      chìm trong những trải nghiệm phong phú, tất cả đều từ nơi ở của bạn.</span>
    <div class="e29_257"></div>
    <div class="e29_258"></div>
    <div class="e29_259"></div>
    <div class="e29_260"></div>
    <div class="e29_261"></div>
    <div class="e29_262"></div>
    <div class="e29_279"></div><span class="e29_288">Explore Can Tho like never before.</span><a
        class="e29_289" href="home.jsp">VRCanTho</a><span class="e29_314">About</span><span class="e29_315">Team</span><span
        class="e29_316">Mission</span><span class="e29_317">Contact</span><span class="e29_318">Tours</span><span
        class="e29_319">Guided</span><span class="e29_320">Custom</span><span class="e29_321">Packages</span><span
        class="e29_322">Support</span><span class="e29_323">© 2023 VRCanTho. All rights reserved.</span><span
        class="e29_329">Du ngoạn trên chợ nổi Cần Thơ thông qua thực tế ảo</span><span class="e29_330">Được đưa đến những
      khu chợ nổi mang tính biểu tượng của Cần Thơ, nơi có màu sắc rực rỡ, hương thơm kỳ lạ và sự hối hả của những người
      bán hàng địa phương bao quanh bạn trong khi bạn cảm thấy thoải mái như ở nhà.</span>
    <div class="e29_367"></div>
    <div class="e86_1789"></div><a class="e86_1790" href="https://taib1910442.github.io/VRCanTho" target="_blank">Khám phá ngay</a>
    <div class="e29_368"></div><span class="e29_369">Bạn đã sẵn sàng khám phá Cần Thơ chưa? Bắt đầu chuyến du lịch ảo
      của bạn ngay bây giờ!</span><a class="e29_370" href="locationsList">Khám phá ngay</a>
    <div class=e29_373>
        <c:if test="${empty username}">
            <div class="e29_374"><a class="e29_375" href="login">Đăng nhập</a></div>
        </c:if>
        <c:if test="${not empty username}">
            <div class="e29_374"><a class="e29_375" href="user/profile">${username}</a></div>
        </c:if>
    </div>

</body>

</html>