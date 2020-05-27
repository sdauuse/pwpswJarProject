<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">


    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        #accountManager table{
            margin: 0px auto;
            width: 40%;
        }
        #accountManager table tr td {
            padding-top: 20px;
        }
        .input1{
            width: 250px;
        }
    </style>
</head>
<body>
<form>
    <div id="accountManager">
        <table>
            <tr>
                <td><img src="#"/></td>
                <td>请选择头像</td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" class="form-control" name="username" class="input1"></td>
            </tr>
            <tr>
                <td>昵称：</td>
                <td><input type="text" class="form-control" name="userNickname" class="input1"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="radio" name="userGender">男 <input type="radio" name="userGender">女</td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" class="form-control" name="userAge" class="input1"></td>
            </tr>
            <tr>
                <td>手机：</td>
                <td><input type="text" class="form-control" name="userPhone" class="input1"></td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" class="form-control" name="email" class="input1"></td>
            </tr>
        </table>
    </div>


</form>

</body>
</html>
