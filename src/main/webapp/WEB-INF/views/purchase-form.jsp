<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Purchase</title>
    <style>
        body { font-family: Arial; background-color: #f9f9f9; }
        .container {
            width: 400px; margin: 50px auto; background: #fff;
            padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        label { display: block; margin-top: 15px; font-weight: bold; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; }
        .actions { margin-top: 20px; display: flex; justify-content: space-between; }
        .actions input, .actions a {
            padding: 10px 20px; border: none; border-radius: 5px; text-decoration: none;
            color: white; font-weight: bold;
        }
        .save-btn { background-color: #28a745; }
        .cancel-btn { background-color: #dc3545; }
    </style>
</head>
<body>
<div class="container">
    <h2>Add New Purchase</h2>
    <form action="save" method="post">
        <label for="productId">Product</label>
        <select name="productId" required>
            <c:forEach var="product" items="${products}">
                <option value="${product.id}">${product.name}</option>
            </c:forEach>
        </select>

        <label for="date">Date</label>
        <input type="date" name="date" required />

        <label for="qty">Quantity</label>
        <input type="number" name="qty" min="1" required />

        <label for="price">Price</label>
        <input type="number" name="price" step="0.01" min="0" required />

        <div class="actions">
            <input type="submit" value="Save" class="save-btn" />
            <a href="list" class="cancel-btn">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
