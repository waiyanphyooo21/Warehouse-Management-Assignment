<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Purchase List</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
            padding: 30px;
        }

        h2 {
            color: #333;
        }

        .button-bar {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        .button, .back-btn {
            padding: 10px 16px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            min-width: 160px;
            text-align: center;
        }

        .back-btn {
            background-color: #6c757d;
        }

        .button:hover {
            background-color: #0056b3;
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
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .action-link {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }

        .action-link.delete {
            color: #dc3545;
        }

        .action-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h2>Purchase List</h2>

<div class="button-bar">
    <a href="form" class="button">Add Purchase</a>
    <a href="<c:url value='/'/>" class="back-btn">Back to Home</a>
</div>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Product</th>
        <th>Qty</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${purchases}" var="purchase">
        <tr>
            <td>${purchase.id}</td>
            <td>${purchase.date}</td>
            <td>
                <c:forEach items="${products}" var="product">
                    <c:if test="${product.id == purchase.productId}">
                        ${product.name}
                    </c:if>
                </c:forEach>
            </td>
            <td>${purchase.qty}</td>
            <td>${purchase.price}</td>
            <td>
                <a href="form?id=${purchase.id}" class="action-link">Edit</a>
                <a href="delete?id=${purchase.id}" class="action-link delete"
                   onclick="return confirm('Are you sure you want to delete this purchase?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
