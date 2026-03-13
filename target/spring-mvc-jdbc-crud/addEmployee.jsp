<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <style>
        body {
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbG-_w7o1FcIv9hAJetrDug2n8W-GzJVI95oM5jTsMjGAsiHsqATbVYCnTZdP2oKYwfGKR8Q&s'); /* Replace with your image URL */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h2 {
            color: #fff;
            text-shadow: 1px 1px 2px #000;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* semi-transparent form background */
            padding: 20px;
            border-radius: 10px;
            max-width: 450px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }

        input[type="text"], input[type="email"], input[type="date"], select {
            width: 100%;
            padding: 8px;
            margin: 6px 0 12px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Add Employee</h2>
    <form action="save" method="post">
        <label>Name:</label>
        <input type="text" name="name" required/><br/>

        <label>Email:</label>
        <input type="email" name="email" required/><br/>

        <label>Phone:</label>
        <input type="text" name="phone" required/><br/>

        <label>Department:</label>
        <input type="text" name="department" required/><br/>

        <label>Designation:</label>
        <input type="text" name="designation" required/><br/>

        <label>Salary:</label>
        <input type="text" name="salary" required/><br/>

        <label>Gender:</label>
        <select name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br/>

        <input type="submit" value="Save"/>
    </form>
</body>
</html>
