<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-image: url('https://images.unsplash.com/photo-1521791136064-7986c2920216?auto=format&fit=crop&w=1400&q=80');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        /* Subtle moving gradient overlay */
        body::before {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(120deg, rgba(0,0,0,0.4), rgba(0,0,0,0.6));
            animation: moveGradient 6s infinite alternate;
            z-index: 0;
        }

        @keyframes moveGradient {
            0% { background: linear-gradient(120deg, rgba(0,0,0,0.4), rgba(0,0,0,0.6)); }
            100% { background: linear-gradient(240deg, rgba(0,0,0,0.6), rgba(0,0,0,0.4)); }
        }

        .form-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 40px 50px;
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
            width: 350px;
            color: #fff;
            text-align: left;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #fff;
            text-shadow: 1px 1px 3px #000;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 6px 0 12px;
            border: none;
            border-radius: 8px;
            background: rgba(255,255,255,0.8);
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            background: #28a745;
            color: #fff;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        input[type="submit"]:hover {
            background: #218838;
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0,0,0,0.4);
        }

        label {
            font-weight: bold;
        }

        /* Floating particles background effect */
        .bubble {
            position: absolute;
            bottom: -50px;
            width: 20px;
            height: 20px;
            background: rgba(255,255,255,0.3);
            border-radius: 50%;
            animation: rise 10s infinite ease-in;
        }

        @keyframes rise {
            0% { transform: translateY(0) scale(1); opacity: 1; }
            100% { transform: translateY(-120vh) scale(1.5); opacity: 0; }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Update Employee</h2>
        <form action="${pageContext.request.contextPath}/update" method="post">
            <input type="hidden" name="id" value="${command.id}"/>
            
            <label>Name:</label>
            <input type="text" name="name" value="${command.name}" required/>
            
            <label>Email:</label>
            <input type="text" name="email" value="${command.email}" required/>
            
            <label>Phone:</label>
            <input type="text" name="phone" value="${command.phone}" required/>
            
            <label>Dept:</label>
            <input type="text" name="department" value="${command.department}" required/>
            
            <label>Designation:</label>
            <input type="text" name="designation" value="${command.designation}" required/>
            
            <label>Salary:</label>
            <input type="text" name="salary" value="${command.salary}" required/>
            
            <label>Gender:</label>
            <input type="text" name="gender" value="${command.gender}" required/>
            
            <input type="submit" value="Update"/>
        </form>
    </div>

    <script>
        // Create soft floating bubble effect
        const body = document.body;
        for (let i = 0; i < 20; i++) {
            const bubble = document.createElement('div');
            bubble.classList.add('bubble');
            bubble.style.left = Math.random() * 100 + 'vw';
            bubble.style.width = bubble.style.height = Math.random() * 15 + 10 + 'px';
            bubble.style.animationDuration = Math.random() * 5 + 5 + 's';
            body.appendChild(bubble);
        }
    </script>
</body>
</html>
