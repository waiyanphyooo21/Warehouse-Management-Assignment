<%--
  Created by IntelliJ IDEA.
  User: macbookair
  Date: 6/26/25
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%--<% response.sendRedirect("product/list"); %>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<head>
  <title>Warehouse App</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      background: white;
      padding: 40px 50px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
      text-align: center;
    }

    h2 {
      margin-bottom: 25px;
      color: #333;
    }

    .btn {
      display: inline-block;
      padding: 12px 0;
      background-color: #007BFF;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      font-weight: bold;
      width: 200px;
      text-align: center;
      margin: 8px 0;
    }

    .btn:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Welcome to Warehouse Management</h2>

  <a class="btn" href="category/list">Manage Categories</a><br>
  <a class="btn" href="product/list">Manage Products</a><br>
  <a class="btn" href="purchase/list">Manage Purchases</a><br>
  <a class="btn" href="sale/list">Manage Sales</a><br>

</div>
</body>
</html>



