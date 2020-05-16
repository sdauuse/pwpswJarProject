<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通告列表</title>
    <style type="text/css">
        #notice_list ul li{
            list-style-type: none;
            line-height: 40px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            font-size: 14px;
            text-align: left;
        }
        #notice_list{
            width: 70%;
            margin: 60px auto;
        }
        #notice_list a{
            text-decoration: none;
        }
        #notice_list a:link,a:visited,a:active{
            color: cornflowerblue;
        }
        #notice_list a:hover{
            color: red;
        }
        .span1{
            float: right;
        }
        body{
            margin: 0px;
            padding: 0px;
        }
        #notice_list #line #div1{
            color: white;
            margin-left: 25px;
            padding-top: 15px;
            width: auto;
            height: auto;
            float: left;
        }
        #notice_list #line{
            width: 100%;
            height: 50px;
            margin: 0px auto;
            padding: 0px;
            background-color: #337ab7;
        }
        #notice_list #pagination{
            width: 750px;
            padding-left: 370px;
        }
    </style>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">


    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/>

<div id="notice_list">
    <div id="line">
        <div id="div1">通告列表</div>
    </div>
    <ul>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
        <li><a href="#">测试列表测试列表测试列表测试列表测试列表测试列表测试列表</a><span class="span1">2020-02-19</span></li>
    </ul>
    <div id="pagination">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
