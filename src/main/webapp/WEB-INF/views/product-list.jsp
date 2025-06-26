<%--<%@ page contentType="text/html;charset=UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Product List</title>--%>
<%--    <style>--%>
<%--        table { border-collapse: collapse; width: 100%; }--%>
<%--        th, td { padding: 8px; border: 1px solid black; }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Product List</h2>--%>

<%--<a href="${pageContext.request.contextPath}/product/form">Add New Product</a>--%>

<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th><th>Name</th><th>Code</th><th>Category</th><th>Actions</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="p" items="${products}">--%>
<%--        <tr>--%>
<%--            <td>${p.id}</td>--%>
<%--            <td>${p.name}</td>--%>
<%--            <td>${p.code}</td>--%>
<%--            <td>--%>
<%--                <c:forEach var="cat" items="${categories}">--%>
<%--                    <c:if test="${cat.id == p.categoryId}">--%>
<%--                        ${cat.name}--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <a href="${pageContext.request.contextPath}/product/form?id=${p.id}">Edit</a> |--%>
<%--                <a href="${pageContext.request.contextPath}/product/delete?id=${p.id}">Delete</a>--%>
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
        table { width: 100%; border-collapse: collapse; background: #fff; margin-top: 20px; }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #007BFF; color: white; }
        a.button {
            display: inline-block;
            padding: 8px 12px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        a.button:hover { background-color: #218838; }
        a.action { color: #007BFF; margin-right: 10px; text-decoration: none; }
        a.action:hover { text-decoration: underline; }
    </style>
</head>
<body>
<h2>Product List</h2>

<a href="form" class="button">+ Add New Product</a>

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
