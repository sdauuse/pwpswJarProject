<%--
  Created by IntelliJ IDEA.
  User: 75164
  Date: 2020/5/25
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js" style="width: auto;">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8">
    <title>个人发布的帖子</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">
   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-confirm.css">--%>


    <%--<script type="text/javascript"
            src="${pageContext.request.contextPath}/js/user_vol_register_js/jquery-3.4.1.min.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

    <script src="${pageContext.request.contextPath}/js/user_vol_register_js/distpicker.data.js"></script>
    <script src="${pageContext.request.contextPath}/js/user_vol_register_js/distpicker.js"></script>
    <%--<script src="${pageContext.request.contextPath}/js/jquery-confirm.js"></script>--%>
    <style>
        #backgroud {
            color: #31708f;
            /*background-color: #d9edf7;*/
            /* background-color: #FFFFFF;*/
            background-color: #F5F5F5;
            border-color: #bce8f1;
            min-height: 200px;
            /*margin-bottom: 15px;*/
            padding: 15px;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            overflow: hidden;
            word-break: break-all;
            border-radius: 7px;
            box-shadow: 1px 1px 2px #a7a8ad;
        }

        #h2 {
            text-align: center;
            font-family: '微软雅黑';
            font-size: 22px;
            color: #000000;
        }

        td {
            text-align: right;
            font-family: '微软雅黑';
            width: 140px;
            height: 25px;
            /* word-wrap: 'nowrap';*/
            font-size: 18px;
            color: #000000;
        }

        input {
            display: block;
            line-height: 1.42857143;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 317px;
            height: 32px;
            font-family: '微软雅黑';
            font-size: 18px;
            color: #000000;

        }

        select {
            display: block;
            line-height: 1.42857143;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 317px;
            height: 32px;
            font-family: '微软雅黑';
            font-size: 18px;
            color: #000000;
        }

        textarea {
            width: 317px;
            height: 249px;
            font-family: '微软雅黑';
            font-size: 18px;
            color: #000000;
        }

        button {
            color: #333;
            background-color: #e6e6e6;
            border-color: #adadad;
        }

        #btn_delete, #btn_update {
            width: 100px;
            height: 32px;
            background-color: #F5F5F5;
            text-align: center;
            display: inline-block;
        }

        #img {
            width: 317px;
            height: 32px;
            font-size: 18px;
            color: #000000;
        }
    </style>

    <script type="text/javascript">

        //真正从数据库删除帖子
        function del(id) {
            var r = confirm("确认要删除吗？")
            if (r == true) {

                $.ajax({
                    url: '${pageContext.request.contextPath}/post/deletePostById.action?postId=' + id,
                    dataType: 'json',//预期服务端返回json
                    success: function (result) {//形参result内容是deleteNotice.action响应的结果，是json对象
                        //提示操作结果
                        alert(result.message);
                        //如果删除成功刷新 列表

                        if (result.success) {
                            //刷新
                            window.location.reload();
                        }
                    }


                });
            }
        }


        function edit() {
            var r = confirm("确认要修改吗？")
            if (r == true) {

                $.ajax({
                    cache: false,
                    type: "POST",
                    enctype: "multipart/form-data",
                    async: false,
                    url: "${pageContext.request.contextPath}/post/updatepost.action", //把表单数据发送到ajax.jsp
                    data: $('#postForm').serialize(),
                    //要发送的是ajaxFrm表单中的数据
                    /*  error: function (request) {
                          alert("发送请求失败！");
                      }*/
                    success: function (data) {
                        //var result = JSON.stringify(data);
                        //提示操作结果
                        if (data.success == false) {
                            alert(data.message);
                        }
                    }
                });
            }
        }
    </script>
</head>

<body version="3.0" xv="3.1.0" style="position: relative;" data-option="{}">

<jsp:include page="/jsps/index/picture_nav.jsp"/>

<div id="backgroud">
    <div class="page-container" initlayout="true"
         style="width: 100%; height: 100%; position: relative; min-width: 150px; min-height: 90px;"
         candrop="ecp-rect"
         candel="false" xdeer-rect="r1"
         data-option="{'width':'100%','pageTrueHeight':'100%','pageTrueWidth':'100%','pageMinWidth':150,'pageMinHeight':90,'height':'100%','minHeight':'90px','paddingLeft':'0px','paddingRight':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','paddingTop':'0px','marginBottom':'0px','marginTop':'0px','position':''}"
         rectautoexpand="false">
        <!--***controlHtml***-->
        <!--ctrlInfo_default78cf113437858a63aad2a2b7d_纵向flex_db4f496ad0d53935bdd21a8f544df34d_ctrlInfo-->
        <div class="col-12"
             style="height: 10px; display: flex; flex-flow: column nowrap; border-width: 0px; position: relative;"
             candrop="ecp-flex-vertical" id="ecpflexvertical_2271"
             xdeer-flex-vertical="ecp-flex-vertical_f8018871c625a6daecd0654e78af5b8f"
             data-option="{'id':'ecpflexvertical_2271','height':'200px','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginleft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
             dom-data-type="ecp-flex-vertical" dom-data-version="13">
            <div candrop="ecp-flex-col" style="display: flex; width: 100%; flex: 1 1 auto; border-width: 0px;"
                 xdeer-flex-col="7af1373324ad87e7696f4052f47b4e26"
                 data-option="{'flex-basis':'auto','flex-grow':'1','flex-shrink':'1','width':'100%','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginleft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"></div>
        </div>
        <h2 id="h2">个人帖子中心</h2>
        <c:forEach items="${list}" var="list">
            <form id="postForm" method="post" enctype="multipart/form-data">
                <input type="hidden" name="postId" value="${list.postId}">
                <table style="margin: auto;border-collapse:separate; border-spacing:0px 11px;">
                    <tr>
                        <td>失联人姓名：</td>
                        <td><input type="text" name="postName" value="${list.postName}"></td>
                        <td>性别：</td>
                        <td><select>

                            <option value="男" name="postGender"
                                    <c:if test="${list.postGender eq '男'}">selected</c:if> >男
                            </option>
                            <option value="女" name="postGender"
                                    <c:if test="${list.postGender eq '女'}">selected</c:if> >女
                            </option>
                        </select>
                        </td>
                        <td>年龄：</td>
                        <td><input type="text" name="postAge" value="${list.postAge}"></td>
                    </tr>

                    <tr>
                        <td>失联省市：</td>
                        <td><input type="text" readonly value="${list.postProvince}"></td>
                        <td>失联城市：</td>
                        <td><input type="text" readonly value="${list.postCity}"></td>
                        <td>失联区县：</td>
                        <td><input readonly type="text" value="${list.postCountry}"></td>
                    </tr>

                    <tr data-toggle="distpicker">

                        <td>修改失联省市：</td>
                        <td><select id="province1" name="postProvince">
                            <option></option>
                        </select></td>
                        <td>新失联城市：</td>
                        <td>
                            <select id="city1" name="postCity">
                                <option></option>
                            </select>
                        </td>
                        <td>新失联区县：</td>
                        <td>
                            <select id="district1" name="postCountry">
                                <option></option>
                            </select>
                        </td>
                    </tr>

                    <tr>

                        <td>失联街道：</td>
                        <td><input type="text" name="postStreet" value="${list.postStreet}"></td>
                        <td>帖子类型：</td>
                        <td>
                            <select>
                                <option value="家寻宝贝" name="postType"
                                        <c:if test="${list.postType eq '家寻宝贝'}">selected</c:if>>家寻宝贝
                                </option>
                                <option value="宝贝寻家" name="postType"
                                        <c:if test="${list.postType eq '宝贝寻家'}">selected</c:if>>宝贝寻家
                                </option>
                                <option value="流浪乞讨" name="postType"
                                        <c:if test="${list.postType eq '流浪乞讨'}">selected</c:if>>流浪乞讨
                                </option>
                                <option value="游子寻家" name="postType"
                                        <c:if test="${list.postType eq '游子寻家'}">selected</c:if>>游子寻家
                                </option>
                                <option value="其他寻人" name="postType"
                                        <c:if test="${list.postType eq '其他寻人'}">selected</c:if>>其他寻人
                                </option>
                            </select>
                        </td>
                        <td>失联时间：</td>
                        <td><input type="text" readonly value="${list.missingtime}"></td>
                    </tr>

                    <tr>
                        <td>具体描述：</td>
                        <td><textarea name="postDescribe" rows=5
                                      placeholder="内容长度应小于256个汉字或者512个字母">${list.postDescribe}</textarea></td>
                        <td>图片：</td>
                        <td>
                            <img
                                    <c:if test="${list.postPicture == null}">src="/upload/1ad395bf-9468-4b46-bf72-8c39bb763591.png"</c:if>
                                    <c:if test="${list.postPicture != null}">src="/upload/${list.postPicture}"</c:if>
                                    width="317px" height="230px">
                        </td>

                        <td>
                            <div>修改失联时间：</div>
                            <div>上传新图片：</div>
                        </td>
                        <td>

                            <div><input type="datetime-local" name="missingtime"></div>
                            <input id="img" type="file" name="picture">
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><input id="btn_delete" type="button" value="删除" onclick="del(${list.postId})">
                            <input id="btn_update" onclick="edit()" type="button" value="修改"></td>
                    </tr>

                </table>


            </form>
        </c:forEach>
        <%--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--%>
        <nav aria-label="Page navigation"
             com="pagination" id="pagination_8554" xdeer-com="com_e7ec62f7b57d613ee4a950b215a25418"
             dom-data-type="pagination" dom-data-version="4" false="pagination" style="">
            <ul class="pagination" style="margin:0px;" data-option="{}">
                <li><a href="${pageContext.request.contextPath}/post/findPostListByUserId.action?user.userId=1&page=1"
                       aria-label="Previous"><span aria-hidden="true"> 上一页 </span></a>
                    <%-- <li><a href="${pageContext.request.contextPath}/post/findPostListByUserId.action?user.userId=${id}&page=${page-1}" aria-label="Previous"><span aria-hidden="true"> 上一页 </span></a>--%>
                </li>
                <li class="active"><a herf="#">${page}</a></li>
                <li><a href="${pageContext.request.contextPath}/post/findPostListByUserId.action?user.userId=1&page=2"
                       aria-label="Next"><span aria-hidden="true"> 下一页 </span></a></li>
                <%--<li><a href="${pageContext.request.contextPath}/post/findPostListByUserId.action?user.userId=${id}&page=${page+1}" aria-label="Next"><span aria-hidden="true"> 下一页 </span></a></li>--%>
                <li><span>共有${totalPage}页</span></li>
            </ul>
        </nav>
        <!--***controlHtml***-->
    </div>
</div>


<jsp:include page="/jsps/index/footer.jsp"/>
<%--页脚--%>
<!--***controlHtml***-->
<!--ctrlInfo_default4-af4c-458b-bdb0-602c78ebd466_3行6列_6fc67f42a9faf888c118a5c412d8b161_ctrlInfo-->
<%--<div class="layerPosition fixComp" style="top: 437px; left: 561px; position: relative;" data-option="{}">
</div>--%>


</body>

</html>