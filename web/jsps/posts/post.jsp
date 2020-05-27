<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 96989
  Date: 2020/5/18
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>帖子</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/posts/post.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script>
        function CurentTime() {
            var now = new Date();
            var year = now.getFullYear();       //年
            var month = now.getMonth() + 1;     //月
            var day = now.getDate();            //日
            var hh = now.getHours();            //时
            var mm = now.getMinutes();          //分
            var ss = now.getSeconds();           //秒
            var clock = year + "-";
            if(month < 10)
                clock += "0";
            clock += month + "-";
            if(day < 10)
                clock += "0";
            clock += day + " ";
            if(hh < 10)
                clock += "0";
            clock += hh + ":";
            if (mm < 10) clock += '0';
            clock += mm + ":";
            if (ss < 10) clock += '0';
            clock += ss;

          $('#commentTime').innerHTML=clock;
        }
    </script>
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/><%--顶部图片和导航栏集合--%>

<div id="postPage">

    <%--主贴--%>
    <div class="post">
        <%--发帖人信息--%>
        <h4 class="poster">
            <%--<img src="img/deadpool.jpg" ><br><br>--%>
            版主：${post.user.username}
        </h4>

        <%--帖子详情    --%>
        <div class="postDetail">
            寻人类型：${post.postType}<br>
            失踪者姓名：${post.postName}<br>
            失踪者性别：${post.postGender}<br>
            失踪者年龄：${post.postAge}<br>
            失踪时间：${post.missingtime}<br>
            失踪省份：${post.postProvince}<br>
            失踪城市：${post.postCity}<br>
            失踪乡镇：${post.postCountry}<br>
            失踪街道：${post.postStreet}<br>
            详情描述：${post.postDescribe}
            <br><br>
            <div class="time">失踪时间&nbsp;&nbsp;&nbsp;&nbsp;${post.missingtime}</div>
            <div class="reply"><a href="#replyPoint">回复</a></div>
        </div>
        <div class="clear"></div>
    </div>

    <c:forEach items="${comments}" var="i">
        <div class="post">
            <h4 class="poster">
                    <%--<img src="img/deadpool.jpg" ><br><br>--%>
                用户：${i.user.username}
            </h4>
            <div class="postDetail">
                    <%--回复${post.user.username}：<br>--%>
                    ${i.comments}
                <br><br>
                        <input type="datetime-local" >
                <div class="time">最后更新时间&nbsp;&nbsp;&nbsp;&nbsp;${i.commentTime}</div>
                <div class="reply"><a href="#replyPoint">回复</a></div>
            </div>
            <div class="clear"></div>
        </div>
    </c:forEach>

    <%--回复区域--%>
    <div class="replyArea">
        <a name="replyPoint"></a>
        <h2 id="replyTitle">回复</h2>
        <form action="${pageContext.request.contextPath}/comment/insertComment.action?user.userId=1" method="post">
            <input type="hidden" id="postId" name="postId" value="${post.postId}">
            <%--<input type="text" id="commentTime" name="commentTime" >--%>
            <textarea id="comments" name="comments" required="required" placeholder="请在这儿输入回复吧 =_=" style="height: 200px; width:100%;font-size: 15px;font-weight: 400;line-height: 2em;padding: 6px;"></textarea>
            <%--上传图片<input type="file" id="imageFile" name="imageFile" accept="image/gif, image/jpeg, image/png, image/jpg">--%>
            <div id="postSubmit">
                <input type="submit" value="提交"/>
            </div>
        </form>
    </div>
</div>

<jsp:include page="/jsps/index/footer.jsp"/><%--页脚--%>
</body>
</html>
