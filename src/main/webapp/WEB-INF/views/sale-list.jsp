<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Sales List</title>
  <style>
    body {
      font-family: Arial;
      background-color: #f4f4f4;
      padding: 30px;
    }

    h2 {
      margin-bottom: 20px;
      color: #333;
    }

    .button-bar {
      display: flex;
      gap: 10px;
      margin-bottom: 20px;
    }

    .button, .back-btn {
      padding: 10px 16px;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
    }

    .button {
      background-color: #28a745;
    }

    .button:hover {
      background-color: #218838;
    }

    .back-btn {
      background-color: #6c757d;
    }

    .back-btn:hover {
      background-color: #5a6268;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background-color: white;
    }

    th, td {
      padding: 12px;
      border-bottom: 1px solid #ddd;
      text-align: left;
    }

    th {
      background-color: #007BFF;
      color: white;
    }

    tr:hover {
      background-color: #f1f1f1;
    }
  </style>
</head>
<body>

<h2>Sales List</h2>

<div class="button-bar">
  <a href="form" class="button">Add Sale</a>
  <a href="<c:url value='/' />" class="back-btn">Back to Home</a>
</div>

<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Product</th>
    <th>Qty</th>
    <th>Sale Price</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="s" items="${sales}">
    <tr>
      <td>${s.id}</td>
      <td>
        <c:forEach var="p" items="${products}">
          <c:if test="${p.id == s.productId}">${p.name}</c:if>
        </c:forEach>
      </td>
      <td>${s.qty}</td>
      <td>${s.salePrice}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
