<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Add Purchase</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial;--%>
<%--            background: #f9f9f9;--%>
<%--        }--%>

<%--        .container {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--        }--%>

<%--        form {--%>
<%--            background: white;--%>
<%--            padding: 30px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 0 10px rgba(0,0,0,0.1);--%>
<%--            width: 350px;--%>
<%--        }--%>

<%--        label {--%>
<%--            display: block;--%>
<%--            margin-top: 15px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        input, select {--%>
<%--            width: 100%;--%>
<%--            padding: 8px;--%>
<%--            margin-top: 5px;--%>
<%--            border-radius: 5px;--%>
<%--            border: 1px solid #ccc;--%>
<%--        }--%>

<%--        .button-group {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>

<%--        .button-group input,--%>
<%--        .button-group a {--%>
<%--            flex: 1;--%>
<%--            padding: 10px;--%>
<%--            text-align: center;--%>
<%--            margin: 0 5px;--%>
<%--            text-decoration: none;--%>
<%--            border-radius: 5px;--%>
<%--            font-weight: bold;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .button-group input[type="submit"] {--%>
<%--            background-color: #28a745;--%>
<%--            border: none;--%>
<%--        }--%>

<%--        .button-group a {--%>
<%--            background-color: #dc3545;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <form action="save" method="post">--%>
<%--        <h2 style="text-align: center;">Add Purchase</h2>--%>

<%--        <label for="date">Date:</label>--%>
<%--        <input type="date" name="date" id="date" value="${purchase.date}" required />--%>


<%--        <label for="productId">Product:</label>--%>
<%--        <select name="productId" id="productId" required>--%>
<%--            <c:forEach items="${products}" var="product">--%>
<%--                <option value="${product.id}">${product.name}</option>--%>
<%--            </c:forEach>--%>
<%--        </select>--%>

<%--        <label for="qty">Quantity:</label>--%>
<%--        <input type="number" name="qty" id="qty" required min="1" />--%>

<%--        <label for="price">Price:</label>--%>
<%--        <input type="number" step="0.01" name="price" id="price" required min="0.01" />--%>

<%--        <div class="button-group">--%>
<%--            <input type="submit" value="Save" />--%>
<%--            <a href="list">Cancel</a>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${purchase.id == 0 ? 'Add' : 'Edit'} Purchase</title>
    <style>
        body {
            font-family: Arial;
            background: #f9f9f9;
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
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-group input,
        .button-group a {
            flex: 1;
            padding: 10px;
            text-align: center;
            margin: 0 5px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            color: white;
        }

        .button-group input[type="submit"] {
            background-color: #28a745;
            border: none;
        }

        .button-group a {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
<div class="container">
    <form action="save" method="post">
        <h2 style="text-align: center;">${purchase.id == 0 ? 'Add' : 'Edit'} Purchase</h2>

        <input type="hidden" name="id" value="${purchase.id}" />

        <label for="date">Date:</label>
        <input type="date" name="date" id="date" value="${purchase.date}" required />

        <label for="productId">Product:</label>
        <select name="productId" id="productId" required>
            <c:forEach items="${products}" var="product">
                <option value="${product.id}" ${product.id == purchase.productId ? 'selected' : ''}>${product.name}</option>
            </c:forEach>
        </select>

        <label for="qty">Quantity:</label>
        <input type="number" name="qty" id="qty" value="${purchase.qty}" required min="1" />

        <label for="price">Price:</label>
        <input type="number" step="0.01" name="price" id="price" value="${purchase.price}" required min="0.01" />

        <div class="button-group">
            <input type="submit" value="Save" />
            <a href="list">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
