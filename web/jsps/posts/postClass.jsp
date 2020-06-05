<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.pwpew.service.PostService" %>
<%@ page import="com.pwpew.service.impl.PostServiceImpl" %>
<%@ page import="com.pwpew.modeldriven.PostMd" %>
<%@ page import="com.pwpew.entity.TPost" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>寻亲类型</title>
    <style type="text/css">
        #post_list ul li {
            list-style-type: none;
            line-height: 40px;
            border-bottom-style: dotted;
            border-bottom-width: 1px;
            font-size: 14px;
            text-align: left;
        }

        #post_list {
            width: 70%;
            margin: 60px auto;
        }

        #post_list a {
            text-decoration: none;
        }

        #post_list ul li a:link, a:visited, a:active {
            color: cornflowerblue;
        }

        #post_list ul li a:hover {
            color: red;
        }

        .span1 {
            float: right;
        }

        body {
            margin: 0px;
            padding: 0px;
        }

        #post_list #line #div1 {
            color: white;
            margin-left: 25px;
            padding-top: 15px;
            width: auto;
            height: auto;
            float: left;
        }

        #post_list #line {
            width: 100%;
            height: 50px;
            margin: 0px auto;
            padding: 0px;
            background-color: #337ab7;
        }

        #post_list #pagination {
            width: 750px;
            padding-left: 300px;
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
<%
    int postCount = (int) request.getAttribute("postCount");
    int pagenum = 0;
    request.setAttribute("maxPage", postCount / 10 + 1);
%>

<jsp:include page="/jsps/index/picture_nav.jsp"/>

<div id="post_list">
    <div id="line">
        <div id="div1">寻亲类型</div>
    </div>

    <ul>
        <c:forEach items="${showPostClass}" var="i">
            <li>
                <a href="${pageContext.request.contextPath}/post/showPostClass.action?postId=${i.postId}&page=${page}">${i.postName}</a><span
                    class="span1">${i.postGender}</span></li>
        </c:forEach>
    </ul>

    <div id="pagination">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <c:choose>
                        <c:when test="${page==1}">
                            <a href="${pageContext.request.contextPath}/post/showPostClass.action?page=${page}&rows=10"
                               aria-label="Previous">
                                <span aria-hidden="true">&lt;</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/post/showPostClass.action?page=${page-1}&rows=10"
                               aria-label="Previous">
                                <span aria-hidden="true">&lt;</span>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </li>
                <%
                    for (int i = 1; i < postCount; i++) {
                        if (i % 10 == 0) {
                            pagenum = i / 10;
                %>
                <li><a href="${pageContext.request.contextPath}/post/showPostClass.action?page=<%=pagenum%>&rows=10"
                       name="page"><%=pagenum%>
                </a></li>
                <%
                    }
                    if (i == postCount - 1) {
                %>
                <li><a href="${pageContext.request.contextPath}/post/showPostClass.action?page=<%=pagenum+1%>&rows=10"
                       name="page"><%=pagenum + 1%>
                </a></li>
                <%
                        }
                    }
                %>
                <li>
                    <c:choose>
                        <c:when test="${page==maxPage}">
                            <a href="${pageContext.request.contextPath}/post/showPostClass.action?page=${page}&rows=10"
                               aria-label="Next">
                                <span aria-hidden="true" name="page">&gt;</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/post/showPostClass.action?page=${page+1}&rows=10"
                               aria-label="Next">
                                <span aria-hidden="true" name="page">&gt;</span>
                            </a>
                        </c:otherwise>
                    </c:choose>

                </li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>
