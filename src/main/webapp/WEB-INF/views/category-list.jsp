<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Category List</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; padding: 30px; }
        table { width: 100%; border-collapse: collapse; background: #fff; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
        th { background-color: #007BFF; color: white; }
        a.button {
            display: inline-block;
            padding: 8px 12px;
            margin-bottom: 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<h2>Category List</h2>
<a href="form" class="button">Add New Category</a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
