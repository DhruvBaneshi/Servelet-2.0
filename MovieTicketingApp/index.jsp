<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | Movie Tickets</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            flex-direction: row;
            background-color: #f0f2f5;
        }

        .left-container {
            width: 50%;
            padding: 60px;
            background-color: #ffffff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            box-shadow: 5px 0 15px rgba(0,0,0,0.05);
        }

        .left-container h2 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #333;
        }

        .left-container p {
            margin-bottom: 30px;
            color: #666;
        }

        .left-container form input {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }

        .left-container form button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(120deg, #ff416c, #ff4b2b);
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .left-container form button:hover {
            background: linear-gradient(120deg, #ff4b2b, #ff416c);
        }

        .signup-link {
            margin-top: 15px;
            text-align: center;
        }

        .signup-link a {
            color: #ff4b2b;
            text-decoration: none;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        .right-container {
            width: 50%;
            background: #1f1f1f;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 40px;
        }

        .right-container img {
            width: 100%;
            max-width: 500px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        @media screen and (max-width: 768px) {
            body {
                flex-direction: column;
            }

            .left-container, .right-container {
                width: 100%;
                padding: 30px;
            }

            .right-container {
                padding-top: 0;
            }
        }
    </style>
</head>
<body>
    <div class="left-container">
        <h2>Welcome Back</h2>
        <p>Login to manage your movie bookings and more.</p>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Log In</button>
        </form>
        <div class="signup-link">
            No account yet? <a href="signup.jsp">Sign Up</a>
        </div>
    </div>

    <div class="right-container">
        <img src="images/ticket.png" alt="Movie Ticketing" />
    </div>
</body>
</html>
