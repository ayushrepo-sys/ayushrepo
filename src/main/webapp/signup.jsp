<jsp:include page="menu.jsp"></jsp:include>



<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 400px;
            margin: 50px auto;
            padding: 25px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .role-options {
            margin-top: 10px;
            margin-bottom: 15px;
        }

        .role-options input {
            margin-right: 5px;
        }

        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            margin-top: 15px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        .msg-box {
            margin-top: 15px;
            text-align: center;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Sign Up</h2>

    <form method="post" action="save_user">
        <label for="name">Name:</label>
        <input type="text" name="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" required>

        <label for="mobile">mobile:</label>
        <input type="text" name="mobile">

        <div class="role-options">
            <label>Role:</label>
            <input type="radio" name="role" value="student" > Student
            <input type="radio" name="role" value="faculty"> Faculty
        </div>

        <input type="submit" class="submit-btn" value="Sign Up">
    </form>

    <div class="msg-box">${msg}</div>
</div>

</body>
</html> 



