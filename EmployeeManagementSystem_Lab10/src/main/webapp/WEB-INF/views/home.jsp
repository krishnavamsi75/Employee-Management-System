<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
    <style>
        /* General Styles */
        body { 
            font-family: 'Roboto', Arial, sans-serif; 
            margin: 20px; 
            background-color: #f9f9f9; 
            color: #333; 
        }
        
        h2 {
            color: #0056b3;
            text-align: center;
        }

        a { 
            text-decoration: none; 
            padding: 8px 12px; 
            background: linear-gradient(45deg, #007bff, #0056b3); 
            color: white; 
            border-radius: 5px; 
            transition: background 0.3s ease; 
            font-size: 14px;
        }
        
        a:hover { 
            background: linear-gradient(45deg, #0056b3, #003d80); 
        }
        
        a.delete-btn { 
            background: linear-gradient(45deg, #dc3545, #a71d2a); 
        }

        a.delete-btn:hover { 
            background: linear-gradient(45deg, #a71d2a, #700f1c); 
        }

        .action-buttons a { 
            margin: 0 5px; 
        }

        /* Table Styles */
        table { 
            width: 100%; 
            border-collapse: collapse; 
            margin: 20px 0; 
            background-color: #ffffff; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        }
        
        th, td { 
            padding: 12px; 
            text-align: center; 
            border: 1px solid #ddd; 
        }
        
        th { 
            background: #007bff; 
            color: white; 
            font-weight: bold; 
        }

        tr:nth-child(even) { 
            background-color: #f2f2f2; 
        }

        tr:hover { 
            background-color: #e6f7ff; 
        }
    </style>
</head>
<body>
    <h2>Employee Management System</h2>
    <div style="margin-bottom: 20px; text-align: center;">
        <a href="/employees/add">Add Employee</a>
    </div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>${employee.email}</td>
                    <td>${employee.salary}</td>
                    <td class="action-buttons">
                        <a href="/employees/update/${employee.id}">Edit</a>
                        <a href="/employees/delete/${employee.id}" class="delete-btn" 
                           onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
