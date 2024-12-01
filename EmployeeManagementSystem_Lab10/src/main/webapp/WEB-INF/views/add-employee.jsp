<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 20px;
            background-color: #f4f6f9;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #0056b3;
            margin-bottom: 20px;
        }

        /* Form Styles */
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 25px;
            border: 1px solid #e0e0e0;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(45deg, #007bff, #0056b3);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background: linear-gradient(45deg, #0056b3, #003d80);
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            form {
                padding: 20px;
                font-size: 14px;
            }

            button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <h2>Add Employee</h2>
    <form action="/employees/add" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="department">Department</label>
        <input type="text" id="department" name="department" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="salary">Salary</label>
        <input type="number" id="salary" name="salary" step="0.01" required>

        <button type="submit">Add Employee</button>
    </form>
</body>
</html>
