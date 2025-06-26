<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Sale Entry</title>
  <style>
    body {
      font-family: Arial;
      background: #f2f2f2;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    form {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      width: 350px;
    }

    label {
      margin-top: 10px;
      display: block;
      font-weight: bold;
    }

    input, select {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    .buttons {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
    }

    .buttons input,
    .buttons a {
      padding: 10px;
      border-radius: 5px;
      text-decoration: none;
      text-align: center;
      font-weight: bold;
      flex: 1;
      margin: 0 5px;
    }

    .buttons input {
      background-color: #28a745;
      color: white;
      border: none;
    }

    .buttons a {
      background-color: #dc3545;
      color: white;
    }

    .buttons input:hover,
    .buttons a:hover {
      opacity: 0.9;
    }
  </style>
</head>
<body>
<div class="container">
  <form action="save" method="post">
    <h2 style="text-align:center;">New Sale</h2>

    <label for="productId">Product:</label>
    <select name="productId" id="productId" required>
      <option value="">-- Select Product --</option>
      <c:forEach var="product" items="${products}">
        <option value="${product.id}">${product.name}</option>
      </c:forEach>
    </select>

    <label for="qty">Quantity:</label>
    <input type="number" name="qty" id="qty" required min="1" />

    <label for="salePrice">Sale Price:</label>
    <input type="number" name="salePrice" id="salePrice" step="0.01" required />

    <div class="buttons">
      <input type="submit" value="Save" />
      <a href="list">Cancel</a>
    </div>
  </form>
</div>
</body>
</html>
