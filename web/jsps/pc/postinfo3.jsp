<%--
  Created by IntelliJ IDEA.
  User: 75164
  Date: 2020/5/25
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js" style="width: auto;">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <link rel="stylesheet" href="../css/xdeer.css?v=d15a5912bb">
    <meta charset="utf-8">
    <title>postInfo</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="" name="description">
    <meta content="" name="author">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.css">
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.13.0/css/all.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc/postinfo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc/xdeer.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/personalcenter/postinfo.js"></script>
    <%--<link rel="stylesheet" href="/sdk/bs/themes/font-awesome/css/font-awesome.min.css">--%>
    <%--<link type="text/css" rel="stylesheet" href="/ecp/xdeer/themes/css/combox/ecp.xdeer.combox.css?v=2f64bfce5d.css&amp;v=2.0">--%>
    <%--<link type="text/css" rel="stylesheet" href="/ecp/xdeer/themes/css/combox/ecp.xdeer.combox.css?v=2f64bfce5d.css&amp;v=2.0">
    <link type="text/css" rel="stylesheet" href="/ecp/webcore/themes/default/bs-slider/css/bootstrap-slider.min.css?v=2.0">
    <link href="/ecp/xdeer/pages/behavioral/behavioralEvent.css?v=ff33e3a1f7" rel="stylesheet">--%>
</head>

<body version="3.0" xv="3.1.0" style="position: relative;" data-option="{}">

<jsp:include page="/jsps/index/picture_nav.jsp"/>

<div class="page-container" initlayout="true"
     style="width: 100%; height: 100%; position: relative; min-width: 150px; min-height: 90px;" candrop="ecp-rect"
     candel="false" xdeer-rect="r1"
     data-option="{'width':'100%','pageTrueHeight':'100%','pageTrueWidth':'100%','pageMinWidth':150,'pageMinHeight':90,'height':'100%','minHeight':'90px','paddingLeft':'0px','paddingRight':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','paddingTop':'0px','marginBottom':'0px','marginTop':'0px','position':''}"
     rectautoexpand="false">
    <!--***controlHtml***-->
    <!--ctrlInfo_default78cf113437858a63aad2a2b7d_纵向flex_db4f496ad0d53935bdd21a8f544df34d_ctrlInfo-->
    <div class="col-12"
         style="height: 100px; display: flex; flex-flow: column nowrap; border-width: 0px; position: relative;"
         candrop="ecp-flex-vertical" id="ecpflexvertical_2271"
         xdeer-flex-vertical="ecp-flex-vertical_f8018871c625a6daecd0654e78af5b8f"
         data-option="{'id':'ecpflexvertical_2271','height':'200px','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginleft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
         dom-data-type="ecp-flex-vertical" dom-data-version="13">
        <div candrop="ecp-flex-col" style="display: flex; width: 100%; flex: 1 1 auto; border-width: 0px;"
             xdeer-flex-col="7af1373324ad87e7696f4052f47b4e26"
             data-option="{'flex-basis':'auto','flex-grow':'1','flex-shrink':'1','width':'100%','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginleft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"></div>
    </div>

    <%--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--%>
    <form action="" id="postForm">
        <div class="col-12" candrop="ecp-rect"
             style="height: auto; width: 100%; outline: none; border-width: 0px; position: relative; min-height: 0px;"
             data-option="{'minHeight':'0px','id':'ecprect_7685','height':'auto','width':'100%','paddingLeft':'0px','paddingRight':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','paddingTop':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
             xd-key="adfdfa27-d582-4253-ab0f-3cb29ed1c48e" id="ecprect_7685"
             xdeer-rect="rect_fde61df81b31eaf8ccca87bf79498c68" rectcolnum="6" rectrownum="7"
             dom-data-type="ecp-rect-3-6"
             dom-data-version="7">
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_2382"
                 data-option="{'cols':2}" xdeer-col="col_c846a4020674b11d6d1b3e116c565eda" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px;"></div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_7218"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_9e6ad09938e4ffd8d059590fc230503a" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="position: relative; min-height: 34px; border-width: 0px;">


                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_afd8ec41fb6bb63fadbb1dd6f644a1ec_ctrlInfo-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_0384" xdeer-com="com_5b585a1f43359ed8d277f841ecd52330"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">失联人姓名：
                </div>
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4911"
                 data-option="{'cols':2}" xdeer-col="col_edd97b626ff130c8b51697f2b0e435bb" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_c10ff6b2b114858832e034a08a5f70cf_ctrlInfo-->
                <input
                        type="text" class="form-control input_underline"
                        data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                        com="ecp-text" id="ecptext_1336" xdeer-com="com_ba62903b0341d11624dd4b30088ca38d"
                        dom-data-type="ecp-text" dom-data-version="2" style="">
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_1135"
                 data-option="{'cols':2}" xdeer-col="col_61bef9add1f3ba26d48fe472ba873978" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_bab99f126673b89e2d6f2db3afc22ec1_ctrlInfo-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_9762" xdeer-com="com_e17f5f88600697c6e4984c889e799032"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2"> 性别：
                </div>
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_2643"
                 data-option="{'cols':2}" xdeer-col="col_936bdd36fb03db6a08840040dec8c0e4" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_9b1c70985a06a5e452b67e35311669fd_下拉框_bee148c197f72d099db880c1041749ac_ctrlInfo--><select
                    class="form-control" com="ecp-select" id="ecpselect_2565"
                    xdeer-com="com_df1994c17cc2724447ad5269f5b6549c" data-option="{'tableBorder':false}"
                    dom-data-type="ecp-select" dom-data-version="4">
                <option>1</option>
                <option>2</option>
            </select>
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4955"
                 data-option="{'cols':2}" xdeer-col="col_21419db475ba452d17982e712830d68d" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px;"></div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0584"
                 data-option="{'cols':2,'min-height':'56px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_0c993cd82d5d1671c9a3e1a4218700ff" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true"
                 style="min-height: 39px !important; position: relative; border-width: 0px;"></div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_5681"
                 data-option="{'cols':2,'border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','min-height':'56px','text-align':'start','border-width':'0px','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px'}"
                 xdeer-col="col_7572ffd4ba6e6d0406647e657ee148d5" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="border-width: 0px; position: relative; min-height: 39px !important;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_daa375088c4dc3cecc49a375bd8395f0_ctrlInfo-->
                <!--***controlHtml***-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_9875" xdeer-com="com_fae0b0c8abb6f4e2af974651fd2810c5"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">失联省市：
                </div>
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4520"
                 data-option="{'cols':2,'min-height':'39px !important','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_0297d7bb0d0ee1f4ed1a5319a4286b06" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="min-height: 39px !important; position: relative; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_54cbdb34be4b120e4ed5421b8e2eefb6_ctrlInfo--><input
                    type="text" class="form-control input_underline"
                    data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                    com="ecp-text" id="ecptext_6073" xdeer-com="com_75e6bd3fd865593762e1d95cf2c34d89"
                    dom-data-type="ecp-text" dom-data-version="2" style="">
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_9372"
                 data-option="{'cols':2,'min-height':'56px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_b590329fd6490bea1b1b097476b3256b" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="min-height: 39px !important; border-width: 0px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_91feaf1b5d2c41c43ccb32c8b5ecd87d_ctrlInfo-->
                <!--***controlHtml***-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_3043" xdeer-com="com_9205fabd5ad479ac5649dbe6be3874e2"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">年龄：
                </div>
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_7419"
                 data-option="{'cols':2}" xdeer-col="col_072b2519a81af5f168884c84b28db3c5" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 39px !important; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_c76e8441a9c64deaed02ce95257890cd_ctrlInfo--><input
                    type="text" class="form-control input_underline"
                    data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                    com="ecp-text" id="ecptext_7563" xdeer-com="com_4b06226235b840df10b3e050af0ab1f4"
                    dom-data-type="ecp-text" dom-data-version="2">
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4375"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_4766489ce09aeaef9e48241b964c4918" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="min-height: 39px !important; border-width: 0px;"></div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_7276"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_179a639489e9283bbc7cea650ddb4cd2" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="min-height: 34px; border-width: 0px;"></div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_8795"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_5617c5c1b42a7cb742ef51d26a7b5840" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="position: relative; min-height: 34px; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_0218249e96d00c42835570e7c37ca803_ctrlInfo-->
                <!--***controlHtml***-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_5059" xdeer-com="com_8fd9ff9d4454dd667c7e5cb288845b85"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2"> 失联城市：
                </div>
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_6518"
                 data-option="{'cols':2}" xdeer-col="col_a2711a3a159cab351d98194b56809ddc" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_368f820ace95e9465ad9645813d7dd14_ctrlInfo--><input
                    type="text" class="form-control input_underline"
                    data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                    com="ecp-text" id="ecptext_2506" xdeer-com="com_e1bfeaa098cb8069012406ca78095cbd"
                    dom-data-type="ecp-text" dom-data-version="2" style="">
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4673"
                 data-option="{'cols':2,'border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','min-height':'34px','text-align':'start','border-width':'0px','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px'}"
                 xdeer-col="col_35b1b806a1268f70ca9b6113afc049b8" dom-data-type="ecp-col" dom-data-version="12"
                 rectcolumnflag="true" style="border-width: 0px; min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_e500594cf00d350a5a2225b71c6376ee_ctrlInfo-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_5019" xdeer-com="com_ea11905f8c2f3298729040ca12dc9bcf"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">帖子类型：
                </div>
                <!--***controlHtml***-->
            </div>
            <div class="col-2 open" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_9456"
                 data-option="{'cols':2}" xdeer-col="col_cbd276e460783b66a0060f7052768c76" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px; position: relative;">
                <!--***controlHtml***-->
                <!--ctrlInfo_9b1c70985a06a5e452b67e35311669fd_下拉框_029c09b3ae0084e278630cbefdfc4b53_ctrlInfo--><select
                    class="form-control" com="ecp-select" id="ecpselect_0862"
                    xdeer-com="com_c6aabef4213c844aeef02868f899b5aa" data-option="{'tableBorder':false}"
                    dom-data-type="ecp-select" dom-data-version="4">
                <option>1</option>
                <option>2</option>
            </select>
                <!--***controlHtml***-->
            </div>
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_7353"
                 data-option="{'cols':2}" xdeer-col="col_948a337a3b82a518cc3c18489225fa02" dom-data-type="ecp-col"
                 dom-data-version="12" rectcolumnflag="true" style="min-height: 34px;"></div>
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_0527a454eb9745bfbdc1e546aba898bf_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_1079"
                 data-option="{'cols':2}" xdeer-col="col_5d6fd11ea4471a4552451fabdb6e9143" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 36px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_fba457986b69f229dab318d692c07942_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_5518"
                 data-option="{'cols':2,'min-height':'104px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_dadda059492f45b062ab0d2d35125655" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="position: relative; min-height: 36px; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_81feb608ac88ae8d8c4e3450665f0bcd_ctrlInfo-->
                <!--***controlHtml***-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_5944" xdeer-com="com_514d8d45433c69995bd7af89c05c0a84"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">失联区县：
                </div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_175f71c5ca94b8c3b7b897172fe79e79_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_2678"
                 data-option="{'cols':2,'min-height':'200px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_97c3ff56b611134d69404bf2c3774120" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 36px; position: relative; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_a394cbbcc9f3f9092caaecfe387b88c5_ctrlInfo--><input
                    type="text" class="form-control input_underline"
                    data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                    com="ecp-text" id="ecptext_8128" xdeer-com="com_f850e9a5853ac1d155d50e95e1debb39"
                    dom-data-type="ecp-text" dom-data-version="2" style="">
                <!--***controlHtml***-->
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_ec0eb42507bfc3d6071b802156c09e5f_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_1300"
                 data-option="{'cols':2,'min-height':'36px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_dd5f34f05e7a0af15c33d06d110168ec" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 36px; position: relative; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_3f6ffe77805edfb243c09173a5aeeb05_ctrlInfo-->
                <!--***controlHtml***-->
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_2428" xdeer-com="com_387f8b8fef7ad94d984bffb56bd51b5a"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">失联时间：
                </div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_6bffe766f9d06369438c5c32de355771_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_6307"
                 data-option="{'cols':2,'min-height':'36px !important','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_2773a7e46a6ceb7ea5b37483e42b0365" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 36px; position: relative; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_bd60b6ecf23948b13daaa40fa2b15bb9_ctrlInfo-->
                <!--***controlHtml***-->
                <!--ctrlInfo_f142b43effa993285086c3585dd1eae0_文本域_0e8fe8d4d220755edeccc4adaec3f161_ctrlInfo-->
                <!--***controlHtml***--><input type="text" class="form-control input_underline"
                                               data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                                               com="ecp-text" id="ecptext_1725"
                                               xdeer-com="com_e1b22697ca8de36af6d8fb0eba6afc4e" dom-data-type="ecp-text"
                                               dom-data-version="2" style=""></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_75330a171e1372f1c353dcdf29c99c46_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_2709"
                 data-option="{'cols':2,'min-height':'104px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_670034ee5e6b4c43a8512a86cdeb42e5" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 36px; border-width: 0px;"></div>
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_b00595fd8c7fdc576063bb1911e02c24_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_4045"
                 data-option="{'cols':2}" xdeer-col="col_fa7e30d0bc8eee5d5525cc8e349c5237" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 34px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_382499b0b3a56bf94bafd72546698cb1_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_6977"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_87ad5429b86b314eaf5b7d5869c56e34" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="position: relative; min-height: 34px; border-width: 0px;">
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_9907" xdeer-com="com_53d5bdc8b0fc9dd8e009b7938b546a05"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">失联街道：
                </div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_f98ba34d0ccf009322aec448a06f4601_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_9579"
                 data-option="{'cols':2,'border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_31f3663c82b3a6f552e5b50207e95449" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="border-width: 0px; min-height: 34px; position: relative;"><input
                    type="text"
                    class="form-control input_underline"
                    data-option="{'borderClass':'form-control input_underline','width':'100%','text-align':'left','font-size':'14px','font-weight':'400','color':'black','type':'text'}"
                    com="ecp-text"
                    id="ecptext_3190"
                    xdeer-com="com_a708e77f45fbb9b5f850418c0af17e57"
                    dom-data-type="ecp-text"
                    dom-data-version="2"
                    style="">
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_31727be537432aebfb9fa44aab572d95_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0344"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_c54cb408c927b115a7f2fbad7b2aa53c" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 34px; border-width: 0px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_8118e864123f3f20c2c7c6ccd27c137d_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0633"
                 data-option="{'cols':2}" xdeer-col="col_f812ea75cf3e5081e9b3799b7bf5dbda" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 34px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_a89f7cdaf16470cc22b861d2dd891f64_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_2339"
                 data-option="{'cols':2}" xdeer-col="col_1ff7069f9c6966642b7db38ce8dac666" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 34px;"></div>
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_da4fb06470bb78efbfadeaa45ec89684_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0973"
                 data-option="{'cols':2}" xdeer-col="col_4cae842ac3916ebb90a6eb505b7013e3" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 200px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_7995f10626de88fe3bcc9c319c78a439_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_5760"
                 data-option="{'cols':2}" xdeer-col="col_7b4c4dfc9fe7025b42941e6fb1047c5a" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="position: relative; min-height: 200px;">
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_0622" xdeer-com="com_100650625c5c18fab87440735b56fdf9"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2">具体描述：
                </div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_f1f1d2cd904fe38d809da4753a481bd8_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_1971"
                 data-option="{'cols':2}" xdeer-col="col_3d24592345cdf64377614b68bda8950e" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 200px; position: relative;"><textarea
                    style="width:100%;height: 200px;" class="form-control" rows="3"
                    data-option="{'readonly':false,'disabled':false,'height':'200px','width':'100%','id':'ecptextarea_6689'}"
                    com="ecp-textarea" id="ecptextarea_6689" xdeer-com="com_1cafe9f215bd6235a58aaa860a7d9d8e"
                    dom-data-type="ecp-textarea" dom-data-version="2"></textarea></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_d116c8300d609a48869ba4a9564871cd_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_8617"
                 data-option="{'cols':2}" xdeer-col="col_e3004a198acd9ba91aae25b6973ad836" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 200px; position: relative;">
                <div class="ellipsis" style="text-overflow: ellipsis; white-space: nowrap; text-align: right;"
                     edit-text=""
                     com="ecp-label" id="ecplabel_6666" xdeer-com="com_269eb3d3a7638000e11a9d8ec8f980cc"
                     data-option="{'textAlign':'right','font-weight':false,'fontFamily':'微软雅黑','wordWrap':'nowrap','fontSize':'14px'}"
                     dom-data-type="ecp-label" dom-data-version="2"> 图片：
                </div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_8932a77aae4a41c21f3a23199476b593_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0994"
                 data-option="{'cols':2,'min-height':'200px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_b3709259006c40ac8959a7ef77e57288" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 200px; border-width: 0px; position: relative;">
                <div style="max-width:1920px;max-height:1200px;width:160px;height:120px;min-width: 16px;min-height: 16px;display:inline-block;"
                     com="ecp-img" id="ecpimg_5275" xdeer-com="com_662678738577f6d791d128bd8ded7684"
                     data-option="{'width':160,'height':120,'isNaturalSize':false}" masklayerevent="dblclick.imgrender"
                     dom-data-type="ecp-img" dom-data-version="2"><img style="width: 100%; height: 100%;"
                                                                       src="/ecp/xdeer/themes/img/ecp-img.png"
                                                                       draggable="false" data-option="{}"></div>
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_de17aeb66f5cc4f9d83cdc971b78edb1_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_048"
                 data-option="{'cols':2}" xdeer-col="col_ca8c13171a20a6e1d2bb94e6b45f6270" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 200px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_a48b1412d3818decc9e34ac59fdf2e1b_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_3451"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_1fecb0d1cd573068cc1e42be1157d688" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 35.375px; border-width: 0px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_aa2a1bc4c30c0fef2f7339e1a69a3373_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_5539"
                 data-option="{'cols':2,'min-height':'35.375px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_2605d6ad388fe1bf5d4cd6f1232e8894" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="position: relative; min-height: 35.375px; border-width: 0px;">
                <!--***controlHtml***-->
                <!--ctrlInfo_7ee5651fbb4c9f8f2496b6f47373eda8_标签_727f9321eee5251d23df1d8fc16ab83b_ctrlInfo-->
                <!--***controlHtml***-->
            </div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_16672855258e89d84fc7ad532f1d484e_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_3167"
                 data-option="{'cols':2,'min-height':'35.375px','text-align':'center','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
                 xdeer-col="col_151bc19a1a2d8d4b1927e54f902190bc" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12"
                 style="min-height: 35.375px; border-width: 0px; position: relative; text-align: right;">
                <!--***controlHtml***-->
                <!--ctrlInfo_ef78813e6d8f5b3f6d67f767be111211_文本框_c8023dd92e8096e206d9e4ab978e5b8e_ctrlInfo-->
                <!--***controlHtml***-->
                <!--***controlHtml***-->
                <!--ctrlInfo_38205d4870ffe118b1c90954f3fc7a5b_按钮_840bc9882cc829843e77fc018e86164c_ctrlInfo-->
                <!--***controlHtml***-->
                <!--***controlHtml***-->
                <!--ctrlInfo_default819e7faace886f4bb3b744000_字符图标_e42e2abcc9647e64f27fa5b952d84238_ctrlInfo-->
                <!--***controlHtml***-->
                <i class="glyphicon glyphicon-pencil"
                   style="min-width:5px;line-height:34px;text-align: center;width:34px;display: inline-block;"
                   com="icon"
                   id="icon_8799" xdeer-com="com_f773f2cb815962c9b10aed9274ccf6ba"
                   data-option="{'height':'34px','width':'34px','border':false,'color':'#333333'}"
                   masklayerevent="dblclick.iconrender" is-behavioral="true" dom-data-type="icon"
                   dom-data-version="5"></i>

                <button class="btn-default btn " com="ecp-button" id="ecpbutton_3282"
                        xdeer-com="com_acbf0881285320edbc9972ef73331f74"
                        data-option="{'button_type':'btn-default','size':'btn','padding-top':'6px','padding-left':'12px','padding-right':'12px','padding-bottom':'6px','font-size':'14px','margin-left':'0px','margin-right':'0px','margin-top':'0px','margin-bottom':'0px','id':'ecpbutton_3282'}"
                        dom-data-type="ecp-button" dom-data-version="2" style="padding: 6px 12px;">
                    <div style="min-width: 10px;" edit-text="" data-option="{}" onclick="a()">修改</div>
                </button>

            </div>

            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_3ed736c77ab73323dae31870ea3cf3c4_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_5487"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_65f9a0e7146046f854c44c90ff179305" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 35.375px; position: relative; border-width: 0px;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_fcb80028c0085c8593fb7f00b0ba720c_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_9443"
                 data-option="{'cols':2,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px'}"
                 xdeer-col="col_3cd92f2b8dca9a0a24b26d413751a4c1" rectcolumnflag="true" dom-data-type="ecp-col"
                 dom-data-version="12" style="min-height: 35.375px; border-width: 0px; position: relative;"></div>
            <!--***controlHtml***-->
            <!--***controlHtml***-->
            <!--ctrlInfo_default9-5ddc-4f06-935e-16d068ed2bbf_列_7655e7d8c1a5b55aa86b95c54b898f60_ctrlInfo-->
            <div class="col-2" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_0498"
                 data-option="{'cols':2}" xdeer-col="col_7032494523674c91085732cf8a0f41cb" rectcolumnflag="true"
                 dom-data-type="ecp-col" dom-data-version="12" style="min-height: 35.375px;"></div>
            <!--***controlHtml***-->
        </div>

    </form>

    <div class="col-12" candrop="ecp-col" xd-key="4ca00e4d-b2c2-4237-be53-3a5580a857cc" id="ecpcol_1607"
         data-option="{'cols':12,'min-height':'34px','text-align':'start','paddingLeft':'0px','paddingRight':'0px','paddingTop':'0px','paddingBottom':'0px','marginLeft':'0px','marginRight':'0px','marginBottom':'0px','marginTop':'0px','border-left-width':'0px','border-right-width':'0px','border-top-width':'0px','border-bottom-width':'0px','border-width':'0px'}"
         xdeer-col="col_a4b035407cd047edacc515824950d3ce" autoadd="true" style="position: relative; border-width: 0px;">
        <!--***controlHtml***-->
        <!--ctrlInfo_84d9e738fd63a645276d71867ce91677_分页_e83a3b281fd6e4dfbf813a1d25bc3e95_ctrlInfo-->
        <nav aria-label="Page navigation"
             data-option="{'data':[{'label':'1'},{'label':'2'},{'label':'3'},{'label':'4'},{'label':'5'}],'paginationSize':'pagination','previousCaption':'&amp;laquo;','nextCaption':'&amp;raquo;','showPageIndex':'true'}"
             com="pagination" id="pagination_8554" xdeer-com="com_e7ec62f7b57d613ee4a950b215a25418"
             dom-data-type="pagination" dom-data-version="4" false="pagination" style="">
            <ul class="pagination" style="margin:0px;" data-option="{}">
                <li><a href="#" aria-label="Previous" style="" data-option="{}"><span aria-hidden="true" style=""
                                                                                      data-option="{}"> 上一页 </span></a>
                </li>
                <li class="active"><a herf="#" style="" data-option="{}">1</a></li>
                <li><a href="#" aria-label="Next" style="" data-option="{}"><span aria-hidden="true" style=""
                                                                                  data-option="{}"> 下一页 </span></a></li>
                <li><span>共有几页</span></li>
            </ul>
        </nav>
        <!--***controlHtml***-->
    </div>


    <div class="alert alert-info">信息！请注意这个信息。</div>
    <!--***controlHtml***-->
    <!--ctrlInfo_default4-af4c-458b-bdb0-602c78ebd466_3行6列_6fc67f42a9faf888c118a5c412d8b161_ctrlInfo-->
    <div class="layerPosition fixComp" style="top: 437px; left: 561px; position: relative;" data-option="{}">
        <!--***controlHtml***-->
        <!--ctrlInfo_default819e7faace886f4bb3b744000_字符图标_98a13ee050fbca348f015bae5c71a3d2_ctrlInfo-->
        <!--***controlHtml***-->
    </div>


</div>


<script type="text/javascript">
    //注册删除按钮的事件
    $("#btn_delete").click(function () {
        //取表格的选中行数据


        Ewin.confirm({message: "确认要删除选择的数据吗？"}).on(function (e) {
            if (!e) {
                return;
            }
            $.ajax({
                type: "post",
                url: "/api/DepartmentApi/Delete",
                data: {"": JSON.stringify(arrselections)},
                success: function (data, status) {
                    if (status == "success") {
                        toastr.success('提交数据成功');
                        $("#tb_departments").bootstrapTable('refresh');
                    }
                },
                error: function () {
                    toastr.error('Error');
                },
                complete: function () {

                }

            });
        });
    });

    function a() {
        window.location.href = "https://www.baidu.com/";
    }

    //注册删除按钮的事件
    $("#btn_delete").click(function () {


        Ewin.confirm({message: "确认要修改数据吗？"}).on(function (e) {
            if (!e) {
                return;
            }
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/post/updatepost.action?postId=1",
                data: $('#postForm').serialize(),
                success: function (data) {

                    toastr.info(data.message);
                }

            });
        });
    });

    //ajax请求
    function edit() {
        $.ajax({
            cache: false,
            type: "POST",
            async: false,
            url: "${pageContext.request.contextPath}/post/updatepost.action?postId=1", //把表单数据发送到updatepost.action
            data: $('#loginForm').serialize(),
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

                //如果后台验证成功，则跳转
                if (data.success == true) {
                    //1.利用http的重定向来跳转
                    //alert(data.message);
                    window.location.replace("${pageContext.request.contextPath}/jsps/success.jsp");
                    //2.使用href来跳转
                    //window.location.href = "${pageContext.request.contextPath}/jsps/success.jsp";
                }
            }
        });
    }
</script>

</body>

</html>