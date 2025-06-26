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

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        input[type="submit"],
        a.back {
            width: 48%;
            text-align: center;
            padding: 10px 0;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
        }

        a.back {
            background-color: #6c757d;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a.back:hover {
            background-color: #5a6268;
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

        <div class="button-group">
            <input type="submit" value="Save" />
            <a href="list" class="back">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
