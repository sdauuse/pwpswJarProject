<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>导航栏</title>
	<style type="text/css">
		#nav ul li{
			display: inline;
			list-style-type:none;
			height: 42px;
			width: 135px;
			float:left;
			line-height:39px;
		}
		#nav ul li a{
			text-decoration: none;
			color: white;
		}
		#nav ul li:hover{
			background-color: #E92E1D;
		}
		#nav ul li:hover .nav1{
			display: block;
		}
		#nav ul li .nav1{
			display: none;
		}
		#nav{
			background-color:#C82719;
			padding-left:330px;
			text-align: center;
			margin: 0px auto;
		}
		#nav ul{
			margin: 0px auto;
			padding:0px;
			height: 42px;
			width:100%;
		}
		body{
			text-align:center;
			margin: 0;
			width: 100%;
		}
		#nav .nav1 ul li:hover{
			background-color: #E92E1D;
		}
		.nav1 ul li{
			background-color: white;
		}
		#nav .nav1 ul li  a{
			text-decoration: none;
			color: black;
		}
		.nav1{
			margin-top:4px;
			position: relative;
			z-index: 2;
		}
	</style>
</head>
<body>
<div id="nav">
	<ul>
		<li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
		<li><a href="#">寻亲登记</a>
			<div class="nav1">
				<ul>
					<li><a href="#">家寻宝贝</a></li>
					<li><a href="#">宝贝寻家</a></li>
					<li><a href="#">流浪乞讨</a></li>
					<li><a href="#">其他寻人</a></li>
					<li><a href="#">海外寻亲</a></li>
				</ul>
			</div>
		</li>
		<li><a href="#">志愿者登记</a></li>
		<li><a href="${pageContext.request.contextPath}/post/showPostList.action?page=1">论坛</a></li>
		<li><a href="#">我的</a>
			<div class="nav1">
				<ul>
					<li><a href="${pageContext.request.contextPath}/post/findPostListByUserId.action?user.userId=1">帖子信息</a></li>
					<%--<li><a href="${pageContext.request.contextPath}/jsps/pc/postinfo.jsp?userId=${userId}">帖子信息</a></li>--%>
					<li><a href="#">账号管理</a></li>
					<li><a href="#">系统信息</a></li>
				</ul>
			</div>
		</li>
		<li><a href="${pageContext.request.contextPath}/notice/noticeList.action?page=1&rows=10">网站通告</a></li>
	</ul>
</div>
</body>
</html>