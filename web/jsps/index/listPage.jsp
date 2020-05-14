<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>丢失名单</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/listPage.css">
    <script>
        // 鼠标移动切换显示内容
        function setTab(nav, cursel, n) {
            for (i = 1; i <= n; i++) {
                var menu = document.getElementById(nav + i);
                var con = document.getElementById("con_" + nav + i);
                menu.className = i == cursel ? "hover" : "";
                con.style.display = i == cursel ? "block" : "none";
            }
        }
    </script>
</head>
<body>
<div class="course_list">
    <div class="course_nav">
        <a id="nav2_1" onmousemove="setTab('nav2_',1,5)" class="selected" href="#">家寻宝贝</a>
        <a id="nav2_2" onmousemove="setTab('nav2_',2,5)" class="selected" href="#">宝贝寻家</a>
        <a id="nav2_3" onmousemove="setTab('nav2_',3,5)" class="selected" href="#">流浪乞讨</a>
        <a id="nav2_4" onmousemove="setTab('nav2_',4,5)" class="selected" href="#">海外寻人</a>
        <a id="nav2_5" onmousemove="setTab('nav2_',5,5)" class="selected" href="#">其他寻人</a>
    </div>
    <h4>如果你见到他们 请联系我们</h4>
    <div class="course_container">
        <!-- 家寻宝贝内容 -->
        <div  id="con_nav2_1" class="nav_list">
            <div class="course">
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people1.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course">
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people1.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course">
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people1.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course">
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people1.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
        </div>
        <!-- 宝贝寻家内容 -->
        <div id="con_nav2_2" style="display: none" class="nav_list">
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people2.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people2.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people2.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people2.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
        </div>
        <!--流浪乞讨内容 -->
        <div id="con_nav2_3" style="display: none" class="nav_list">
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people3.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people3.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people3.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people3.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
        </div>
        <!--海外寻人内容 -->
        <div id="con_nav2_4" style="display: none" class="nav_list">
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people4.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people4.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people4.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/loss_people4.jpg" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
        </div>
        <!--其他寻人内容 -->
        <div id="con_nav2_5" style="display: none" class="nav_list">
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/wanted.png" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/wanted.png" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/wanted.png" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
            <div class="course" >
                <a href="#"><img src="${pageContext.request.contextPath}/imgs/index/wanted.png" alt="HTML"></a>
                <span class="course_title"><a href="#">章北海 辽宁省 走失</a></span>
                <img class="person" src="${pageContext.request.contextPath}/imgs/index/person.png" alt="person">
                <span class="number">323</span>
            </div>
        </div>

        <div class="clear"></div>
    </div><!-- end<div class="course_container"> -->
</div><!-- end<div class="course_list"> -->
</body>
</html>
