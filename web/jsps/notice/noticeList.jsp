<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.pwpew.service.NoticeService" %>
<%@ page import="com.pwpew.service.impl.NoticeServiceImpl" %>
<%@ page import="com.pwpew.modeldriven.NoticeMd" %>
<%@ page import="com.pwpew.entity.TNotice" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
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
        #notice_list ul li  a:link,a:visited,a:active{
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
    int noticeCount = (int) request.getAttribute("noticeCount");
    int pagenum=0;
    request.setAttribute("maxPage",noticeCount/10+1);
%>
<jsp:include page="/jsps/index/picture_nav.jsp"/>

<div id="notice_list">
    <div id="line">
        <div id="div1">通告列表</div>
    </div>

    <ul>
        <c:forEach items="${list}" var="i">
            <li><a href="${pageContext.request.contextPath}/notice/noticeMain.action?ntsId=${i.ntsId}&page=${page}">${i.ntsHeadLine}</a><span class="span1">${i.ntsDate}</span></li>
        </c:forEach>
    </ul>

    <div id="pagination">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <c:choose>
                        <c:when test="${page==1}">
                            <a href="${pageContext.request.contextPath}/notice/noticeList.action?page=${page}&rows=10" aria-label="Previous">
                                <span aria-hidden="true">&lt;</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/notice/noticeList.action?page=${page-1}&rows=10" aria-label="Previous">
                                <span aria-hidden="true">&lt;</span>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </li>
                <%
                    for(int i=1;i<noticeCount;i++){
                        if(i%10==0){
                            pagenum=i/10;
                %>
                            <li><a href="${pageContext.request.contextPath}/notice/noticeList.action?page=<%=pagenum%>&rows=10" name="page"><%=pagenum%></a></li>
                <%
                        }
                        if(i ==noticeCount-1){
                %>
                            <li><a href="${pageContext.request.contextPath}/notice/noticeList.action?page=<%=pagenum+1%>&rows=10" name="page"><%=pagenum+1%></a></li>
                <%
                        }
                    }
                %>
                <li>
                    <c:choose>
                        <c:when test="${page==maxPage}">
                            <a href="${pageContext.request.contextPath}/notice/noticeList.action?page=${page}&rows=10" aria-label="Next">
                                <span aria-hidden="true" name="page">&gt;</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/notice/noticeList.action?page=${page+1}&rows=10" aria-label="Next">
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
