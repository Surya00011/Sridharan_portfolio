<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #a1c4fd, #c2e9fb);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
        }
        .container {
            text-align: center;
            background: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #27ae60;
        }
        p {
            font-size: 1.2em;
            color: #666;
        }
        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
            color: white;
            background-color: #27ae60;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #219150;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Successful!</h1>
        <p>Welcome to the dashboard. Explore your account features now!</p>
        <a href="dashboard.jsp" class="button">Go to Dash_board</a>
    </div>
</body>
</html>
