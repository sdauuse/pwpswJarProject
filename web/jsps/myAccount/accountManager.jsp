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

    <link href="${pageContext.request.contextPath}/css/accountManager/accountManager.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/accountManager/accountManager.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/user_vol_register_js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/user_vol_register_js/distpicker.data.js"></script>
    <script src="${pageContext.request.contextPath}/js/user_vol_register_js/distpicker.js"></script>

    <style type="text/css">
        #userNickname{
            width: 300px;
            height: 50px;
            border: 1px solid gray;
            /*设置边框圆角*/
            border-radius: 5px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
<jsp:include page="/jsps/index/picture_nav.jsp"/>
<div class="rg_layout">
    <div class="rg_left">
        <p id="user_register">账号管理</p>
    </div>
    <%--end左浮动结束--%>

    <div class="rg_center">
        <div class="rg_form"><%--定义表单--%>
            <form action="#" method="get" id="form">
                <table>
                    <tr>
                        <td class="td_left"><label for="username">用户名</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="username" id="username">
                            <span id="s_username" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="userNickname">昵称</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="userNickname" id="userNickname">
                            <span id="s_userNickname" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="man">性别</label></td>
                        <td class="td_right" colspan="3">
                            <input id="man" type="radio" checked="checked" name="userGender" value="男"/><span
                                class="man">男</span><input
                                id="woman" type="radio" name="userGender" value="女"/><span>女</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="userAge">年龄</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="userAge" id="userAge">
                            <span id="s_userAge" class="error"></span>
                        </td>
                    </tr>
                    <tr data-toggle="distpicker">
                        <td class="td_left"><label>省份</label></td>
                        <td class="td_right "><select id="province1" name="userProvince"></select></td>
                        <td class="td_left"><label>城市</label></td>
                        <td class="td_right"><select id="city1" name="userCity"></select></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="userPhone">电话号码</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="userPhone" id="userPhone">
                            <span id="s_userPhone" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="email">Email</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="email" id="email">
                            <span id="s_email" class="error"></span>
                        </td>
                    </tr>

                    <tr>
                        <td class="btn_left" align="center" colspan="4" rolspan="2">
                            <input type="submit" name="btn_register" value="保存" id="btn_register" class="btn">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <%--end定义表单--%>
    </div>
</div>

</body>
</html>
