<%@ page import="java.sql.*,javax.servlet.*,javax.servlet.http.*" %>
<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booked Tickets</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f8;
        }

        .navbar {
            background-color: #1c1c1c;
            padding: 20px 40px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: bold;
        }

        .container {
            padding: 40px;
            max-width: 800px;
            margin: auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .ticket {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .ticket-info {
            font-size: 18px;
            color: #444;
        }

        .delete-form {
            margin: 0;
        }

        .delete-btn {
            background-color: #e53935;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s;
        }

        .delete-btn:hover {
            background-color: #c62828;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div><strong>MovieGo</strong></div>
    <div>
    <a href="home.jsp">Home</a>
    </div>
</div>

<div class="container">
    <h2>Your Booked Tickets</h2>
<%
    try {
        Connection conn = com.example.movieapp.DBUtil.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT t.id, t.movie_id FROM tickets t JOIN users u ON t.user_id = u.id WHERE u.email=?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int ticketId = rs.getInt("id");
            String movieTitle = rs.getString("movie_id" );
%>
    <div class="ticket">
        <div class="ticket-info">
            🎬 <strong><%= movieTitle %></strong>
        </div>
        <form class="delete-form" method="post" action="delete">
            <input type="hidden" name="ticketId" value="<%= ticketId %>"/>
            <button type="submit" class="delete-btn">Cancel</button>
        </form>
    </div>
<%
        }
        conn.close();
    } catch (Exception e) {
%>
    <p style="color:red; text-align:center;">Error: <%= e.getMessage() %></p>
<%
    }
%>
</div>

</body>
</html>
