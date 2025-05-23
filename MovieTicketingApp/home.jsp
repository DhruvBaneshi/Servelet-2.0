<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home | Movie Ticketing</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            margin: 0;
            background-color: #f4f6f8;
        }

        /* Navbar */
        .navbar {
            background-color: #1c1c1c;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }

        .navbar h1 {
            margin: 0;
            font-size: 26px;
        }

        .navbar-buttons {
            display: flex;
            gap: 15px;
        }

        .navbar-buttons a {
            text-decoration: none;
            background-color: #ff4b2b;
            padding: 10px 18px;
            border-radius: 8px;
            color: white;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .navbar-buttons a:hover {
            background-color: #ff1e00;
        }

        /* Movie Grid */
        .movie-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 30px;
            padding: 40px;
        }

        .movie-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: transform 0.3s;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-card img {
            width: 100%;
            height: 320px;
            object-fit: cover;
        }

        .movie-content {
            padding: 20px;
        }

        .movie-title {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        .book-btn {
            display: inline-block;
            padding: 10px 15px;
            background: #1c1c1c;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
            transition: background 0.3s ease;
        }

        .book-btn:hover {
            background: #333;
        }

        @media screen and (max-width: 768px) {
            .navbar {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h1>🎬 Movie Ticketing</h1>
        <div class="navbar-buttons">
            <a href="view_tickets.jsp">View Tickets</a>
            <a href="logout">Logout</a>
        </div>
    </div>

    <!-- Movie Cards -->
    <div class="movie-grid">
        <div class="movie-card">
            <img src="http://cdn.collider.com/wp-content/uploads/2019/03/avengers-endgame-poster.jpg" alt="Movie 1">
            <div class="movie-content">
                <div class="movie-title">Avengers: Endgame</div>
                <a href="movie_detail.jsp?movieId=1" class="book-btn">Book Now</a>
            </div>
        </div>

        <div class="movie-card">
            <img src="https://i.pinimg.com/originals/11/1c/5c/111c5c9ad99661af2d80e38948cf29d8.jpg" alt="Movie 2">
            <div class="movie-content">
                <div class="movie-title">Interstellar</div>
                <a href="movie_detail.jsp?movieId=2" class="book-btn">Book Now</a>
            </div>
        </div>

        <div class="movie-card">
            <img src="https://i0.wp.com/www.animegeek.com/wp-content/uploads/2020/04/Demon-Slayer-Movie-Poster-Kimetsu-no-Yaiba-Infinity-Train-Anime.jpg?w=1200&ssl=1" alt="Movie 3">
            <div class="movie-content">
                <div class="movie-title">Deamon Slayer</div>
                <a href="movie_detail.jsp?movieId=3" class="book-btn">Book Now</a>
            </div>
        </div>

        <div class="movie-card">
            <img src="https://flxt.tmsimg.com/assets/p7825626_p_v8_af.jpg" alt="Movie 4">
            <div class="movie-content">
                <div class="movie-title">Inception</div>
                <a href="movie_detail.jsp?movieId=4" class="book-btn">Book Now</a>
            </div>
        </div>
    </div>

</body>
</html>
