<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Category List</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f4f4;
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
            background: white;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #007BFF;
            color: white;
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

<h2>Category List</h2>

<div class="button-bar">
    <a href="form" class="button">Add New Category</a>
    <a href="<c:url value='/'/>" class="back-btn">Back to Home</a>
</div>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td>
                <a href="form?id=${category.id}" class="action-link">Edit</a>
                <a href="delete?id=${category.id}" class="action-link delete" onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
