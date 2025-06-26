<%--
  Created by IntelliJ IDEA.
  User: macbookair
  Date: 6/26/25
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%--<% response.sendRedirect("product/list"); %>--%>

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
      margin-bottom: 20px;
      color: #333;
    }

    a {
      display: inline-block;
      padding: 12px 20px;
      background-color: #007BFF;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      font-weight: bold;
    }

    a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Welcome to Warehouse Management</h2>
  <a href="product/list">Go to Product List</a>
  <p><a href="category/list">Manage Categories</a></p>
  <p><a href="product/list">Manage Products</a></p>
  <p><a href="purchase/list">Manage Purchases</a></p>
  <p><a href="sale/list">Manage Sales</a></p>

</div>
</body>
</html>


