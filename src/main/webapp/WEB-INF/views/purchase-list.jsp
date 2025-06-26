<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Purchase List</title>
    <style>
        body { font-family: Arial; background-color: #f4f4f4; padding: 30px; }
        table { border-collapse: collapse; width: 100%; background: white; box-shadow: 0 0 8px rgba(0,0,0,0.1); }
        th, td { padding: 10px; text-align: left; border-bottom: 1px solid #ccc; }
        th { background-color: #007bff; color: white; }
        h2 { margin-bottom: 20px; }
        a.button {
            background-color: #28a745; color: white;
            padding: 10px 15px; border-radius: 5px; text-decoration: none;
        }
    </style>
</head>
<body>
<h2>Purchase List</h2>
<p><a href="form" class="button">Add New Purchase</a></p>
<table>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Product ID</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    <c:forEach var="purchase" items="${purchases}">
        <tr>
            <td>${purchase.id}</td>
            <td>${purchase.date}</td>
            <td>${purchase.productId}</td>
            <td>${purchase.qty}</td>
            <td>${purchase.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
