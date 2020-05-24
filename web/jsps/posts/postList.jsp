<%@ taglib prefix="c" uri="/struts-tags" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: 96989
  Date: 2020/5/18
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>帖子列表</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/posts/postList.css">
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/><%--顶部图片和导航栏集合--%>


<div id="postListPage">



    <span class="selectArea">
        <form action="" method="post">
            <input id="postSelect" type="text" required="required" placeholder="请输入要查找的关键词">
            <input class="label" type="submit" value="全站搜索">
        </form>
    </span>
    <div style="text-align: right;">
       <a href="posting.jsp" style="font-size: 1.25em;color: #6b5152;font-family: helvetica;">发帖</a>
   </div>
    <br><br>


    <div class="postList">

        <%--显示帖子列表--%>
        <s:iterator value="#session.postList" var="postList" >
            <div class="post">
                <h4 class="postTitle">
                    <a href="post.action ? postId = ${post.postId}">
                        <s:property value="#post.postType"></s:property>
                    </a>
                </h4>
                <div class="postText">
                    <s:property value="#post.postProvince"></s:property>&nbsp;&nbsp;
                    <s:property value="#post.postDescribe"></s:property>
                </div>
                <div class="poster">版主：
                    <a href="#">
                        <s:property value="#post.userId"></s:property>
                    </a>
                </div>
                <div class="time">失踪时间&nbsp;&nbsp;<s:property value="#post.missingtime"></s:property></div>
            </div>
        </s:iterator>

        <%--<c:forEach items="${postList}" var="i">--%>
            <%--<div class="post">--%>
                <%--<h4 class="postTitle">--%>
                    <%--<a href="post.action ? postId = ${post.postId}">--%>
                        <%--<c:out value="#post.postType"></c:out>--%>
                    <%--</a>--%>
                <%--</h4>--%>
                <%--<div class="postText">--%>
                    <%--<c:out value="#post.postProvince"></c:out>&nbsp;&nbsp;--%>
                    <%--<c:out value="#post.postDescribe"></c:out>--%>
                <%--</div>--%>
                <%--<div class="poster">版主：--%>
                    <%--<a href="#">--%>
                        <%--<c:out value="#post.userId"></c:out>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="time">失踪时间&nbsp;&nbsp;<c:out value="#post.missingtime"></c:out> </div>--%>
            <%--</div>--%>
        <%--</c:forEach>--%>



        <%--<div class="post">--%>
            <%--<h4 class="postTitle"><a href="post.jsp">四川寻人！加急！</a></h4>--%>
            <%--<div class="postText">--%>
                <%--女儿走失，求路过的老爷们都点进来看一下，求扩散......--%>
            <%--</div>--%>
            <%--<div class="poster">版主：<a href="#">加坦杰厄</a></div>--%>
            <%--<div class="time">最后更新时间&nbsp;&nbsp;2020-3-23&nbsp;&nbsp;13:45</div>--%>
        <%--</div>--%>
        <%--<hr>--%>
        <%--<div class="post">--%>
            <%--<h4 class="postTitle"><a href="#">紧急救援</a></h4>--%>
            <%--<div class="postText">--%>
                <%--1、街头流浪、乞讨儿童有明显伤残的，或正遭受暴力虐待的，流浪、乞讨儿童的生命、健康遇到威胁的解救活动。<br>--%>
                <%--2、街头乞讨、流浪儿与失踪登记的儿童有高度疑似的，需要网友提供最新行踪的求助。<br>--%>
                <%--3、对本站志愿者自身困难的募捐活动。入选条件......--%>
            <%--</div>--%>
            <%--<div class="poster">版主：<a href="#">兰陵笑笑生</a></div>--%>
            <%--<div class="time">最后更新时间&nbsp;&nbsp;2020-3-23&nbsp;&nbsp;13:45</div>--%>
        <%--</div>--%>
        <%--<hr>--%>
        <%--<div class="post">--%>
            <%--<h4 class="postTitle"><a href="post.jsp">四川寻人！加急！</a></h4>--%>
            <%--<div class="postText">--%>
                <%--女儿走失，求路过的老爷们都点进来看一下，求扩散......--%>
            <%--</div>--%>
            <%--<div class="poster">版主：<a href="#">加坦杰厄</a></div>--%>
            <%--<div class="time">最后更新时间&nbsp;&nbsp;2020-3-23&nbsp;&nbsp;13:45</div>--%>
        <%--</div>--%>
        <%--<hr>--%>
        <%--<div class="post">--%>
            <%--<h4 class="postTitle"><a href="#">紧急救援</a></h4>--%>
            <%--<div class="postText">--%>
                <%--1、街头流浪、乞讨儿童有明显伤残的，或正遭受暴力虐待的，流浪、乞讨儿童的生命、健康遇到威胁的解救活动。<br>--%>
                <%--2、街头乞讨、流浪儿与失踪登记的儿童有高度疑似的，需要网友提供最新行踪的求助。<br>--%>
                <%--3、对本站志愿者自身困难的募捐活动。入选条件......--%>
            <%--</div>--%>
            <%--<div class="poster">版主：<a href="#">兰陵笑笑生</a></div>--%>
            <%--<div class="time">最后更新时间&nbsp;&nbsp;2020-3-23&nbsp;&nbsp;13:45</div>--%>
        <%--</div>--%>
        <%--<hr>--%>
        <%--<div class="post">--%>
            <%--<h4 class="postTitle"><a href="post.jsp">四川寻人！加急！</a></h4>--%>
            <%--<div class="postText">--%>
                <%--女儿走失，求路过的老爷们都点进来看一下，求扩散......--%>
            <%--</div>--%>
            <%--<div class="poster">版主：<a href="#">加坦杰厄</a></div>--%>
            <%--<div class="time">最后更新时间&nbsp;&nbsp;2020-3-23&nbsp;&nbsp;13:45</div>--%>
        <%--</div>--%>
    </div>
</div>

<div id="blank" style="height: 120px"></div>
<jsp:include page="/jsps/index/footer.jsp"/><%--页脚--%>
</body>
</html>
