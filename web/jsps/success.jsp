<%@ page import="java.util.List" %>
<%@ page import="com.pwpew.entity.TPost" %><%--
  Created by IntelliJ IDEA.
  User: 75164
  Date: 2020/5/3
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>success</h2>
    <c:forEach items="${list}" var="i">

        ${i.postName}
    </c:forEach>
 <%--   ${list.postName}--%>
    <%--<% List<TPost> list = (List<TPost>) request.getAttribute("list");
    %>
<%=list.get(0).getPostName()%>--%>
</body>
</html>
