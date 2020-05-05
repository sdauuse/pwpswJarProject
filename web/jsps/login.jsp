<%--
  Created by IntelliJ IDEA.
  User: 75164
  Date: 2020/5/3
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录测试</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/student/checkLogin.action" method="post">
    用户名:<input type="text" name="userEntity.username" required="required" id="name"><br>

    密&nbsp&nbsp&nbsp&nbsp码:<input type="password" id="passwd"d name="userEntity.password" required="required"
                                  size="21"/><br>
    <br>
    <input type="submit" value="提交">
    <input type="button" onclick="cancel();" value="取消">

    <script type="text/javascript">
        function cancel() {
            document.getElementById("name").value = "";
            document.getElementById("passwd").value = "";
        }

    </script>
</form>
</body>
</html>
