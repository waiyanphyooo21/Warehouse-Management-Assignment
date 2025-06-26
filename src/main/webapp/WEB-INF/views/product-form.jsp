<%--&lt;%&ndash;<%@ page contentType="text/html;charset=UTF-8" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Product Form</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <style>&ndash;%&gt;--%>
<%--&lt;%&ndash;        body { font-family: Arial; padding: 30px; background-color: #f4f4f4; }&ndash;%&gt;--%>
<%--&lt;%&ndash;        h2 { color: #333; }&ndash;%&gt;--%>
<%--&lt;%&ndash;        form {&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: white;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 6px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            max-width: 400px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            box-shadow: 0 0 10px rgba(0,0,0,0.1);&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        label {&ndash;%&gt;--%>
<%--&lt;%&ndash;            display: block;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-top: 15px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-bottom: 5px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            font-weight: bold;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="text"] {&ndash;%&gt;--%>
<%--&lt;%&ndash;            width: 100%;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 8px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border: 1px solid #ccc;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="submit"], a.back {&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-top: 20px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            display: inline-block;&ndash;%&gt;--%>
<%--&lt;%&ndash;            padding: 10px 15px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #007BFF;&ndash;%&gt;--%>
<%--&lt;%&ndash;            color: white;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;            border-radius: 4px;&ndash;%&gt;--%>
<%--&lt;%&ndash;            text-decoration: none;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        a.back {&ndash;%&gt;--%>
<%--&lt;%&ndash;            background-color: #6c757d;&ndash;%&gt;--%>
<%--&lt;%&ndash;            margin-left: 10px;&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;        input[type="submit"]:hover { background-color: #0056b3; }&ndash;%&gt;--%>
<%--&lt;%&ndash;        a.back:hover { background-color: #5a6268; }&ndash;%&gt;--%>
<%--&lt;%&ndash;    </style>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h2>${product.id == 0 ? 'Add New Product' : 'Edit Product'}</h2>&ndash;%&gt;--%>

<%--&lt;%&ndash;<form action="save" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="hidden" name="id" value="${product.id}" />&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label for="name">Name:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="name" id="name" value="${product.name}" required />&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label for="code">Code:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="code" id="code" value="${product.code}" required />&ndash;%&gt;--%>

<%--&lt;%&ndash;    <label for="categoryName">Category Name:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="categoryName" id="categoryName" value="" required />&ndash;%&gt;--%>


<%--&lt;%&ndash;    <input type="submit" value="Save" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    <a href="list" class="back">Cancel</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Product Form</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background: #f4f4f4;--%>
<%--        }--%>

<%--        .container {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--        }--%>

<%--        form {--%>
<%--            background: white;--%>
<%--            padding: 30px 40px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 0 12px rgba(0,0,0,0.15);--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            width: 350px;--%>
<%--        }--%>

<%--        label {--%>
<%--            margin-top: 10px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        input[type="text"] {--%>
<%--            padding: 8px;--%>
<%--            margin-top: 5px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>

<%--        .button-group {--%>
<%--            margin-top: 20px;--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--        }--%>

<%--        .button-group input,--%>
<%--        .button-group a {--%>
<%--            flex: 1;--%>
<%--            text-align: center;--%>
<%--            padding: 10px;--%>
<%--            text-decoration: none;--%>
<%--            border-radius: 5px;--%>
<%--            font-weight: bold;--%>
<%--            margin: 0 5px;--%>
<%--        }--%>

<%--        .button-group input[type="submit"] {--%>
<%--            background-color: #28a745;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--        }--%>

<%--        .button-group a {--%>
<%--            background-color: #dc3545;--%>
<%--            color: white;--%>
<%--            line-height: 30px;--%>
<%--        }--%>

<%--        .button-group input[type="submit"]:hover,--%>
<%--        .button-group a:hover {--%>
<%--            opacity: 0.9;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <form action="save" method="post">--%>
<%--        <h2 style="text-align: center;">Add Product</h2>--%>

<%--        <input type="hidden" name="id" value="${product.id}" />--%>

<%--        <label for="name">Name:</label>--%>
<%--        <input type="text" name="name" id="name" value="${product.name}" required />--%>

<%--        <label for="code">Code:</label>--%>
<%--        <input type="text" name="code" id="code" value="${product.code}" required />--%>

<%--        <label for="categoryName">Category Name:</label>--%>
<%--        <input type="text" name="categoryName" id="categoryName" value="" required />--%>


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
    <title>Product Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0,0,0,0.15);
            display: flex;
            flex-direction: column;
            width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
            text-align: center;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"] {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        .button-group {
            margin-top: 25px;
            display: flex;
            gap: 10px;
        }

        .button-group input,
        .button-group a {
            flex: 1;
            text-align: center;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .button-group input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
        }

        .button-group a {
            background-color: #dc3545;
            color: white;
            line-height: 33px;
        }

        .button-group input[type="submit"]:hover,
        .button-group a:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<div class="container">
    <form action="save" method="post">
        <h2>${product.id == 0 ? "Add Product" : "Edit Product"}</h2>

        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>

        <input type="hidden" name="id" value="${product.id}" />

        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="${product.name}" required />

        <label for="code">Code:</label>
        <input type="text" name="code" id="code" value="${product.code}" required />

        <label for="categoryName">Category Name:</label>
        <input type="text" name="categoryName" id="categoryName" value="${categoryName}" required />

        <div class="button-group">
            <input type="submit" value="Save" />
            <a href="list">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
