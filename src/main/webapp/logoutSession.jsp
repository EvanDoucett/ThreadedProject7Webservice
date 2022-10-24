<%--
  Created by IntelliJ IDEA.
  User: edouc
  Date: 2022-10-23
  Time: 1:37 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>

<body>
<h1>Logout Screen</h1>
<jsp:include page="navigation.jsp" />
<%
    session.invalidate();
    System.out.print("<h1>Successfully Log out!!!</h1>");
%>
<jsp:include page="footer.jsp" />
</body>

