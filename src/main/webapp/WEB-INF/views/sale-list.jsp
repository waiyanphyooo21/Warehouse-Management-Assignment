<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Sales List</title>
  <style>
    body { font-family: Arial; padding: 30px; background: #f9f9f9; }
    table {
      border-collapse: collapse;
      width: 100%;
      background: white;
      box-shadow: 0 0 5px rgba(0,0,0,0.1);
    }
    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
    }
    th {
      background: #007BFF;
      color: white;
    }
    a.button {
      display: inline-block;
      padding: 10px 15px;
      margin-bottom: 20px;
      background: #28a745;
      color: white;
      text-decoration: none;
      border-radius: 5px;
    }
    a.button:hover {
      opacity: 0.9;
    }
  </style>
</head>
<body>
<h2>Sales List</h2>
<a href="form" class="button">+ Add Sale</a>
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
