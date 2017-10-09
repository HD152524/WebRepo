<%@ page import="org.dimigo.VO.UserVO" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017-09-28
  Time: 오후 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% UserVO user = (UserVO)session.getAttribute("user");%>
<p>id: <%=user.getId()%></p>
<p>name: <%=user.getName()%></p>
<p>nickname: <%=user.getNickname()%></p>
</body>
</html>
