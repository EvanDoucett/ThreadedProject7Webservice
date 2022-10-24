<%--
  Created by IntelliJ IDEA.
  User: edouc
  Date: 2022-10-16
  Time: 3:45 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
<%--  <link rel="stylesheet" href="site.css" />--%>
<%--  <link rel="stylesheet" href="~/css/site.css" asp-append-version="true" />--%>
<%--  <link rel="stylesheet" href="~/TravelExpertsMVC.styles.css" asp-append-version="true" />--%>
  <script src="customer.js"></script>
  <script src="agents.js"></script>
  <title>TravelExperts</title>
  <header>
    <nav class="navbar navbar-expand-lg bg-primary navbar-light box-shadow mb-3">
      <div class="container-fluid">

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse d-md-inline-flex justify-content-center">
          <ul class="navbar-nav flex-grow-1 justify-content-center">
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Packages</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="customer.jsp">Customers</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Agents</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Bookings</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Products</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Suppliers</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="agents.jsp">Agencies</a>
            </li>
            <li class="nav-item offset-1">
              <a class="nav-link text-dark fs-5 text-primary badge bg-white" href="logoutSession.jsp">Logout</a>
            </li>


          </ul>
        </div>
      </div>
    </nav>

  </header>
</head>
