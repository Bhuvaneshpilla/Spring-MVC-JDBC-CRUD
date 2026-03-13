<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhlcIXP6UB1tcGJgdnNALyNDAKMzEqg8ft2XiN_ZYmXeVSVouMVENK3F1joQ&s'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            padding: 20px;
            color: #333;
            overflow-x: hidden;
            position: relative;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff;
            text-shadow: 1px 1px 3px #000;
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 10px 10px 30px rgba(0,0,0,0.5);
            position: relative;
            z-index: 1;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f4f4f4;
        }

        tr:nth-child(even) {
            background-color: #fafafa;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Add New button */
        .add-btn {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 10px 18px;
            border-radius: 6px;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        .add-btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 0 10px rgba(0,123,255,0.5);
        }

        /* Edit and Delete button styles */
        .action-btn {
            padding: 6px 12px;
            border-radius: 6px;
            color: #fff;
            font-size: 14px;
            text-decoration: none;
            transition: all 0.3s ease;
            margin: 0 3px;
            display: inline-block;
        }

        .edit-btn {
            background-color: #28a745;
        }

        .edit-btn:hover {
            background-color: #218838;
            transform: scale(1.1);
            box-shadow: 0 0 10px rgba(40,167,69,0.5);
        }

        .delete-btn {
            background-color: #dc3545;
        }

        .delete-btn:hover {
            background-color: #c82333;
            transform: scale(1.1);
            box-shadow: 0 0 10px rgba(220,53,69,0.5);
        }

        /* Confetti animation */
        .confetti {
            width: 10px;
            height: 10px;
            position: absolute;
            background-color: #fff;
            opacity: 0.9;
            z-index: 0;
            pointer-events: none;
            transform: rotate(0deg);
            animation: fall linear infinite;
        }

        @keyframes fall {
            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(100vh) rotate(360deg);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <h2>Employee List</h2>
    <a href="addEmployee" class="add-btn">➕ Add New Employee</a><br/><br/>

    <div class="table-container">
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Dept</th>
                <th>Designation</th>
                <th>Salary</th>
                <th>Gender</th>
                <th>Action</th>
            </tr>
            <c:forEach var="emp" items="${list}">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.email}</td>
                    <td>${emp.phone}</td>
                    <td>${emp.department}</td>
                    <td>${emp.designation}</td>
                    <td>${emp.salary}</td>
                    <td>${emp.gender}</td>
                    <td>
                        <a href="edit/${emp.id}" class="action-btn edit-btn">✏️ Edit</a>
                        <a href="delete/${emp.id}" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this employee?')">🗑️ Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    
    <script>
        const colors = ['#f8f9fa', '#ffc107', '#17a2b8', '#28a745', '#dc3545', '#6f42c1'];
        const numPieces = 40;

        for(let i=0; i<numPieces; i++){
            const confetti = document.createElement('div');
            confetti.classList.add('confetti');
            confetti.style.left = Math.random() * window.innerWidth + 'px';
            confetti.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
            confetti.style.animationDuration = (Math.random() * 3 + 2) + 's';
            confetti.style.width = confetti.style.height = (Math.random() * 8 + 5) + 'px';
            confetti.style.top = '-' + (Math.random() * 20 + 10) + 'px';
            document.body.appendChild(confetti);
        }
    </script>
</body>
</html>
