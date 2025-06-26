<%--<%@ page contentType="text/html;charset=UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Product List</title>--%>
<%--    <style>--%>
<%--        body { font-family: Arial; padding: 30px; background-color: #f4f4f4; }--%>
<%--        h2 { color: #333; }--%>
<%--        table { width: 100%; border-collapse: collapse; background: #fff; margin-top: 20px; }--%>
<%--        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }--%>
<%--        th { background-color: #007BFF; color: white; }--%>
<%--        a.button {--%>
<%--            display: inline-block;--%>
<%--            padding: 8px 12px;--%>
<%--            background-color: #28a745;--%>
<%--            color: white;--%>
<%--            text-decoration: none;--%>
<%--            border-radius: 4px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        a.button:hover { background-color: #218838; }--%>
<%--        a.action { color: #007BFF; margin-right: 10px; text-decoration: none; }--%>
<%--        a.action:hover { text-decoration: underline; }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Product List</h2>--%>

<%--<a href="form" class="button">+ Add New Product</a>--%>

<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Code</th>--%>
<%--        <th>Category</th>--%>
<%--        <th>Actions</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="product" items="${products}">--%>
<%--        <tr>--%>
<%--            <td>${product.id}</td>--%>
<%--            <td>${product.name}</td>--%>
<%--            <td>${product.code}</td>--%>
<%--            <td>${product.categoryId}</td>--%>

<%--            <td>--%>
<%--                <a href="form?id=${product.id}" class="action">Edit</a>--%>
<%--                <a href="delete?id=${product.id}" class="action" style="color: red;">Delete</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
    <style>
        body { font-family: Arial; padding: 30px; background-color: #f4f4f4; }
        h2 { color: #333; }

        .button-bar {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        .button, .back-btn {
            padding: 10px 16px;
            background-color: #28a745;
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
            background-color: #218838;
        }

        .back-btn:hover {
            background-color: #5a6268;
        }

        table { width: 100%; border-collapse: collapse; background: #fff; margin-top: 20px; }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #007BFF; color: white; }

        a.action {
            color: #007BFF;
            margin-right: 10px;
            text-decoration: none;
        }

        a.action:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Product List</h2>

<div class="button-bar">
    <a href="form" class="button">+ Add New Product</a>
    <a href="<c:url value='/' />" class="back-btn">Back to Home</a>
</div>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Code</th>
        <th>Category</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.code}</td>
            <td>${product.categoryId}</td>
            <td>
                <a href="form?id=${product.id}" class="action">Edit</a>
                <a href="delete?id=${product.id}" class="action" style="color: red;">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
