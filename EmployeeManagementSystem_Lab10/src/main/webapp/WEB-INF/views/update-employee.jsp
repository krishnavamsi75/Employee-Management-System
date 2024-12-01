<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <style>
        /* Body styling for a clean and professional look */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        /* Center the form and style it */
        form {
            max-width: 450px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Styling for form labels */
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 14px;
            color: #555;
        }

        /* Input field styling */
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        /* Focus state for input fields */
        input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus {
            border-color: #007bff;
            outline: none;
            background-color: #fff;
        }

        /* Button styling */
        button {
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        /* Hover and active states for button */
        button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        button:active {
            transform: scale(1);
        }

        /* Page title styling */
        h2 {
            text-align: center;
            font-size: 24px;
            color: #444;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <h2>Update Employee</h2>
    <form action="/employees/update/${employee.id}" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>

        <label for="department">Department</label>
        <input type="text" id="department" name="department" value="${employee.department}" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${employee.email}" required>

        <label for="salary">Salary</label>
        <input type="number" id="salary" name="salary" step="0.01" value="${employee.salary}" required>

        <button type="submit">Update Employee</button>
    </form>
</body>
</html>
