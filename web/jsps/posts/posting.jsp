<%--
  Created by IntelliJ IDEA.
  User: 96989
  Date: 2020/5/24
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/posts/posting.css">
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/><%--顶部图片和导航栏集合--%>
<div id="postListPage">
    <div class="postList">
        <form action="${pageContext.request.contextPath}/post/posting.action" method="post">
            <table align="center">
                <tr>
                    <td>寻亲类型：</td>
                    <td><select name="postType">
                        <option value="家寻宝贝">家寻宝贝</option>
                        <option value="宝贝寻家">宝贝寻家</option>
                        <option value="流浪乞讨">流浪乞讨</option>
                        <option value="海外寻人">海外寻人</option>
                        <option value="其他寻人">其他寻人</option>
                    </select></td>
                </tr>
                <tr>
                    <td>失踪者姓名：</td>
                    <td><input type="text" name="postName" required="required"></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>男<input name="postGender" type="radio" value="男" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;女<input name="postGender" type="radio" value="女"></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><input type="number" name="postAge" required="required" min="0" max="150"></td>
                </tr>
                <tr>
                    <td>失踪时间：</td>
                    <td><input type="date" name="missingtime" required="required"></td>
                </tr>
                <tr>
                    <td>失踪所在省或直辖市：</td>
                    <td><input type="text" required="required"></td>
                </tr>
                <tr>
                    <td>详细描述：</td>
                    <td><textarea name="postDescribe" cols="30" rows="10"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="提交"></td>
                </tr>
            </table>

        </form>
    </div>
</div>


<jsp:include page="/jsps/index/footer.jsp"/><%--页脚--%>
</body>
</html>
