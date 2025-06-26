<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Category Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            padding: 30px;
        }

        .form-box {
            background: white;
            padding: 25px;
            border-radius: 8px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"], a.back {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 20px;
            border-radius: 5px;
            text-decoration: none;
            color: white;
        }

        input[type="submit"] {
            background-color: #28a745;
            border: none;
        }

        a.back {
            background-color: #6c757d;
            margin-left: 10px;
        }
    </style>
</head>
<body>
<div class="form-box">
    <h2>${category.id == 0 ? 'Add Category' : 'Edit Category'}</h2>
    <form action="save" method="post">
        <input type="hidden" name="id" value="${category.id}" />
        <label for="name">Category Name:</label>
        <input type="text" id="name" name="name" value="${category.name}" required />
        <input type="submit" value="Save" />
        <a href="list" class="back">Cancel</a>
    </form>
</div>
</body>
</html>
