<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/5/7
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册页面</title>
    <link href="css/user_register.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/user.register.js"></script>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script src="js/distpicker.data.js"></script>
    <script src="js/distpicker.js"></script>
</head>

<body>
<div class="rg_layout">
    <div class="rg_left">
        <p id="user_register">新用户注册</p>
    </div>
    <%--end左浮动结束--%>

    <div class="rg_center">
        <div class="rg_form"><%--定义表单--%>
            <form action="#" method="get" id="form">
                <table>
                    <tr>
                        <td class="td_left"><label for="username">用户名</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="username" id="username" placeholder="请输入用户名">
                            <span id="s_username" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="userPassword">密码</label></td>
                        <td class="td_right" colspan="3">
                            <input type="password" name="userPassword" id="userPassword" placeholder="密码长度大于等于6位">
                            <span id="s_userPassword" class="error"></span>
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
                            <input type="text" name="userAge" id="userAge" placeholder="请输入年龄">
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
                            <input type="text" name="userPhone" id="userPhone" placeholder="请输入电话号码">
                            <span id="s_userPhone" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="email">Email</label></td>
                        <td class="td_right" colspan="3">
                            <input type="text" name="email" id="email" placeholder="请输入省份">
                            <span id="s_email" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="check_code">验证码</label></td>
                        <td class="td_right" colspan="4">
                            <div class="code">
                                <input type="text" value="" placeholder="请输入验证码（不区分大小写）" id="check_code"
                                       class="input-val">
                                <canvas id="canvas" width="100" height="30"></canvas>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="btn_left" align="center" colspan="4">
                            <input type="submit" name="btn_register" value="注册" id="btn_register" class="btn">
                            <input type="submit" name="btn_register" value="重置" id="btn_reset">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <%--end定义表单--%>
    </div>
    <%--end中间浮动结束--%>

    <div class="rg_right">
        <p id="have_account">已有账号 <a href="#">立即登录</a></p>
    </div>
    <%--end右浮动结束--%>
</div>
</body>
</html>
