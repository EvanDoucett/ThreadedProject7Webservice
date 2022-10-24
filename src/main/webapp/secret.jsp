<%--
  Created by IntelliJ IDEA.
  User: edouc
  Date: 2022-10-04
  Time: 8:22 a.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
      <%
        if (session.isNew() || session.getAttribute("logged_in") == null
                || session.getAttribute("logged_in").equals(false))
        {
          response.sendRedirect("login.jsp");
        }//if
      %>

<head>
    <title>LoggedInPage</title>
    <jsp:include page="header.jsp" />
</head>
<body>
<h1>Welcome back, please select an option and let's get started.</h1>
<br/>
<br/>
    <jsp:include page="navigationAdmin.jsp" />
<br/>
<br/>
</body>
<jsp:include page="footer.jsp" />

