<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主要内容</title>
    <style type="text/css">
/*============start导航条样式==================*/
        #nav0 ul li {
            display: inline;
            list-style-type: none;
            height: 42px;
            width: 135px;
            float: left;
            line-height: 39px;
            border-radius: 5px;
        }

        #nav0 ul li a {
            text-decoration: none;
            color: white;
        }

        #nav0 a:link, a:active, a:hover, a:visited {
            color: black;
        }

        #nav0 ul li:hover {
            background-color: #97CBFF;
            border-radius: 5px;
        }

        #nav0 {
            width: 80%;
            background-color:cornflowerblue;
            padding-left: 20px;
            margin-top: 15px;
            margin-left: 150px;
            border-radius: 5px;
        }

        #nav0 ul {
            margin: 0px auto;
            padding: 0px 0px 0px 220px;
            height: 42px;
            width: 100%;
        }
/*=========end导航条样式==============*/
        body {
            text-align: center;
            margin: 0;
            width: 100%;
        }
        #content-pane{
            width:80%;
            height:110px;
            margin: 0 auto;
        }

        .hover1{
            width:800px;
            margin:15px auto 15px auto;
        }
        .hover1 div{
            width:400px;
            height:110px;
            float:left;
            text-align: center;
        }
        .content-left ul li {
            list-style-type: none;
        }

        .content-right ul li {
            list-style-type: none;
        }

    </style>

</head>

<body>

<script>
    <!--
    /*第一种形式 第二种形式 更换显示样式*/
    function setTab(nav, cursel, n) {
        for (i = 1; i <= n; i++) {
            var menu = document.getElementById(nav + i);
            var con = document.getElementById("con_" + nav + i);
            menu.className = i == cursel ? "hover" : "";
            con.style.display = i == cursel ? "block" : "none"
        }
    }
    //-->
</script>
<div id="nav0">
    <ul>
        <li id="nav_1" onmouseover="setTab('nav_',1,6)" ><a href="#">家寻宝贝</a></li>
        <li id="nav_2" onmouseover="setTab('nav_',2,6)"><a href="#">宝贝寻家</a></li>
        <li id="nav_3" onmouseover="setTab('nav_',3,6)"><a href="#">流浪乞讨</a></li>
        <li id="nav_4" onmouseover="setTab('nav_',4,6)"><a href="#">活动报道</a></li>
        <li id="nav_5" onmouseover="setTab('nav_',5,6)"><a href="#">打拐政策</a></li>
        <li id="nav_6" onmouseover="setTab('nav_',6,6)"><a href="#">志愿者指南</a></li>
    </ul>
</div>

<%--整体内容--%>
<div id="content-pane" >
    <%--家寻宝贝内容--%>
    <div class="hover1" id="con_nav_1" >
        <%--家寻宝贝左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">家寻宝贝左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">家寻宝贝左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--家寻宝贝右边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">家寻宝贝右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">家寻宝贝右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">家寻宝贝右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

    <%--宝贝寻家内容--%>
    <div id="con_nav_2"  class="hover1" style="display: none">
        <%--家寻宝贝左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">宝贝寻家左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">宝贝寻家左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--家寻宝贝右边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">家寻宝贝右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">宝贝寻家右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">宝贝寻家右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

    <%--流浪乞丐内容--%>
    <div id="con_nav_3"  class="hover1" style="display: none">
        <%--流浪乞丐左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">流浪乞丐左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">流浪乞丐左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--流浪乞丐左边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">流浪乞丐右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">流浪乞丐右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">流浪乞丐右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

    <%--活动报告内容--%>
    <div id="con_nav_4"  class="hover1" style="display: none">
        <%--活动报告左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">活动报告左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">活动报告左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--活动报告右边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">活动报告右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">活动报告右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">活动报告右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

    <%--打拐政策内容--%>
    <div id="con_nav_5"  class="hover1" style="display: none">
        <%--打拐政策左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">打拐政策左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">打拐政策左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--打拐政策右边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">打拐政策右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">打拐政策右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">打拐政策右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

    <%--志愿者指南内容--%>
    <div id="con_nav_6"  class="hover1" style="display: none">
        <%--志愿者指南左边内容--%>
        <div class="content-left">
            <ul>
                <li><a href="#" class="li-top">志愿者指南左边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">志愿者指南左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南左边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
        <%--打志愿者指南右边内容--%>
        <div class="content-right">
            <ul>
                <li><a href="#" class="li-top">志愿者指南右边内容</a>&nbsp;<span>2020-05-02</span></li>
                <li><a href="#">志愿者指南右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
                <li><a href="#">志愿者指南右边内容</a>&nbsp;<span class="li_right">2020-05-02</span></li>
            </ul>
        </div>
    </div>

</div>


</body>
</html>
