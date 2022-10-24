<head>
    <title>TravelExpers-LoginPage</title>
</head>
<jsp:include page="header.jsp" />
<body>
<form method="get" action="loginServlet">
    User Id: <input type="text" name="userid" /><br/>
    Password: <input type="password" name="password" /><br/>
    <button type="submit">LogIn</button>
</form>
<%

    if (session.getAttribute("message") != null && !session.getAttribute("message").equals(""))
    {
        response.getWriter().println("<h1 style='color:red'>" + session.getAttribute("message") +"</h1>");
        session.setAttribute("message", "");
    }//if
%>
</body>
<jsp:include page="footer.jsp" />