<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通告内容</title>
    <style type="text/css">
        #notice{
            /*background-color: cornsilk;*/
            width: 80%;
            margin: 60px auto;
        }
        #headline h2{
            text-align: center;
        }
        #notice_message #message_left{
            float: left;
            margin-left: 10px;
        }
        #notice_message #message_right{
            float: right;
            margin-right: 30px;
        }
        #notice_message{
            font-size: 13px;
            font-family: Arial;

        }
        #notice_main{
            font-size: 15px;
            margin-top: 20px;
        }
        .td1{
             background-color: gainsboro;
         }
        .td2{
            font-size: 13px;
            padding-top: 55px;
        }
        .a1{
            text-decoration: none;
        }
        #notice  a:hover{
            color: red;
        }
        #notice_index td a:link,a:visited,a:active{
            color: #2e6da4;
        }
        body{
            margin: 0px;
        }
    </style>
</head>
<body>
    <jsp:include page="/jsps/index/picture_nav.jsp"/><%--顶部图片和导航栏--%>
    <div id="notice">
        <table>
            <tr>
                <td>
                    <div id="headline"><%--通告标题--%>
                        <h2>通告标题</h2>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <div id="notice_message"><%--通告信息--%>
                        <span id="message_left">发布者：张三</span>
                        <span id="message_right">发布日期：2020-04-01 09:38</span>
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <div id="notice_main"><%--通告正文--%>
                        各缴存职工：

                        根据国务院《住房公积金管理条例》（国务院令第350号）、《长春市住房公积金提取管理办法》（长住金管字〔2015〕3号）等相关规定，结合实际工作情况，现对部分公积金提取业务通知如下：

                        一、根据《住房公积金管理条例》第二十四条：“职工死亡或者被宣告死亡的，职工的继承人、受遗赠人可以提取职工住房公积金账户内的存储余额；无继承人也无受遗赠人的，职工住房公积金账户内的存储余额纳入住房公积金的增值收益。”的规定，职工的继承人、受遗赠人应尽快提取职工住房公积金账户内的存储余额。

                        二、使用《商品房买卖合同》提取住房公积金的职工及配偶，提取后若发生合同撤销行为的，应及时退还使用该套房屋手续提取的全部住房公积金。未退还的，中心将限制职工及配偶的公积金提取、贷款资格，直至足额退还为止。

                        特此通知。

                        长春市住房公积金管理中心
                        2020年4月1日
                    </div>
                </td>
            </tr>
                <tr>
                    <div id="notice_index">
                        <td class="td2">上一篇:<a href="#" class="a1">上一条通告</a><br><br/>

                        下一篇:<a href="#" class="a1">下一条通告</a><br><br/>

                        <a href="#" class="a1">返回通告列表</a></td>
                    </div>
                </tr>

        </table>
    </div>
</body>
</html>
