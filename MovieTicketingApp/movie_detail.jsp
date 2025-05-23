<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    String movieId = request.getParameter("movieId");

        String movieTitle = "";
        String movieDescription = "";

        switch (movieId) {
            case "1":
                movieTitle = "Avengers EndGame";
                movieDescription = "In Infinity Castle, the Demon Slayer Corps prepare for their most intense and emotionally charged battle yet.";
                break;
            case "2":
                movieTitle = "Intesteller";
                movieDescription = "Luffy and crew reunite with Uta, a world-famous singer, whose voice may change the world.";
                break;
            case "3":
                 movieTitle = "xx";
                 movieDescription = "Luffy and crew reunite with Uta, a world-famous singer, whose voice may change the world.";
                 break;
            case "4":
                 movieTitle = "Intesteller";
                 movieDescription = "Luffy and crew reunite with Uta, a world-famous singer, whose voice may change the world.";
                 break;
            default:
                movieTitle = "Unknown Movie";
                movieDescription = "Description not available.";
        }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Details</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .navbar {
            background-color: #1c1c1c;
            color: white;
            padding: 20px 40px;
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
            display: flex;
            flex-direction: row;
            align-items: flex-start;
            justify-content: center;
            margin: 40px auto;
            max-width: 900px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .movie-poster {
            flex: 1;
            background: url('https://source.unsplash.com/400x600/?movie') no-repeat center center;
            background-size: cover;
            min-height: 500px;
        }

        .movie-details {
            flex: 1;
            padding: 30px;
        }

        .movie-details h2 {
            margin-top: 0;
            color: #222;
        }

        .movie-details p {
            color: #555;
            line-height: 1.6;
        }

        .book-form {
            margin-top: 30px;
        }

        .book-btn {
            background-color: #e91e63;
            border: none;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .book-btn:hover {
            background-color: #c2185b;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div><strong>Movie Ticketing</strong></div>
    <div>
        <a href="home.jsp">Home</a>
    </div>
</div>

<div class="container">
    <div class="movie-poster">
    <img src="" />
    </div>
    <div class="movie-details">
        <h2>Movie :<%= movieTitle %></h2>
        <p>
            <%=movieDescription %>
        </p>

        <form class="book-form" method="post" action="book">
            <input type="hidden" name="movieId" value="<%= movieId%>"/>
            <button type="submit" class="book-btn">Book This Movie</button>
        </form>
    </div>
</div>

</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demon Slayer -Kimetsu no Yaiba- The Movie: Infinity Castle</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #111;
            color: #fff;
            margin: 0;
            padding: 0;
        }


        header {
            background-color: #222;
            color: white;
            padding: 15px 20px;
            display: flex;
            align-items: center;
        }

        .logo {
            width: 60px;
            height: 60px;
            margin-right: 20px;
        }

        .container {
            display: flex;
            padding: 40px;
            gap: 40px;
        }

        .poster {
            flex: 1;
        }

        .poster img {
            width: 100%;
            border-radius: 10px;
            transform: scale(1.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .poster img:hover {
            transform: scale(1.10);
            box-shadow: 0 10px 20px rgba(255, 255, 255, 0.2);
        }

        .details {
            flex: 2;
        }

        .title {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 10px;
            margin-top: -20px;
        }

        .rating {
            color: #f45;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .info {
            font-size: 16px;
            margin-bottom: 10px;
            line-height: 1.25;
        }

        .book-btn {
            background-color: #f45;
            color: #fff;
            padding: 15px 25px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .book-btn:hover {
            background-color: #ff3366;
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(255, 51, 102, 0.3);
            transition: all 0.3s ease;
        }

        .gallery {
            display: flex;
            gap: 10px;
            justify-content: start;
        }

        .gallery img {
            max-width: 135px;
            height: auto;
            border-radius: 8px;
            transition: transform 0.3s ease;
            margin-top:20px;
        }

        .gallery img:hover {
            position: absolute;
            width: auto;
            max-width: none;
            height: auto;
            transform: none;
            z-index: 1000;
            background-color: #111;
            box-shadow: 0 0 20px rgba(255,255,255,0.3);
        }


        .about {
            margin-top: auto;
            font-size: 16px;
            max-width: 1200px;
        }
    </style>
</head>
<body>

<!-- Header -->
<header>
    <img src="logo.png" alt="Site Logo" class="logo" />
    <h1>BookingGo</h1>
</header>


String movieId = request.getParameter("movieId");
switch (movieId){
case 1
<div class="container">
    <div class="poster">
        <img src="https://m.media-amazon.com/images/M/MV5BMzRlOGY4NmQtZDUxNy00ZTBjLThkMTgtMzI1MmVkZDgxOTE5XkEyXkFqcGc@._V1_.jpg" alt="Poster"/>
    </div>
    <div class="details">
        <div class="title">Demon Slayer -Kimetsu no Yaiba- The Movie: Infinity Castle</div>
        <div class="rating">⭐ 8.6/10 (18.2K Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 1h 50m<br/>
            <b>Genres:</b> Horror, Supernatural, Thriller<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://imgs.search.brave.com/GF02qqqIlfGw1FcflUePLOT3atttrRbLhkNlrfimWD8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vSE5GcHBC/a05WbGVtVlVvZmNq/OV94OUJwTXhfeUo0/V3ppWWk5TmJQTm5W/MC9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTls/TVM1dy9lR1oxWld3/dVkyOXRMMlJsL2My/dDBiM0F0ZDJGc2JI/QmgvY0dWeUx6VTRN/aTg0TVRNdi9aR1Z6/YTNSdmNDMTNZV3hz/L2NHRndaWEl0WVc1/cGJXVXQvWkdWdGIy/NHRjMnhoZVdWeS9M/WEJ2YzNSbGNpMXdi/M04wL1pYSXRZbmt0/ZEdWaGJTMWgvZDJW/emIyMWxMV0Z1YVcx/bC9MWEJ2YzNSbGNu/TXRNakF5L01TMTBh/SFZ0WW01aGFXd3Uv/YW5Cbg" alt="Scene 1" />
                <img src="https://imgs.search.brave.com/WzFp8gvETtXvgM584Q-4NjhcSgI8ZnKr1shuop1aJp4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vTTJ1V2lv/cWJabW9sR3k4anFv/dEdGb3hWSlRXYzJ5/dGR0R3E2bWZETFNq/QS9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTkz/WVd4cy9jR0Z3WlhK/allYWmxMbU52L2JT/OTNjQzkzY0Rrd01q/TTQvTURndWFuQm4" alt="Scene 2" />
                <img src="https://imgs.search.brave.com/HU8QyFOg58dnQf2DUTTbwGmafK2axj3edlqrzE_ynSc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vQVJROTlt/WmVaWDBRam5qVUt1/d0x1V3gxNU1VeW13/MmphMmdzM2NrTVho/OC9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTl0/TG0xbC9aR2xoTFdG/dFlYcHZiaTVqL2Iy/MHZhVzFoWjJWekww/MHYvVFZZMVFscEhT/bWxOUkd4cy9UV3By/ZEZscVdtbGFVekF3/L1RYcHJNMHhYU1RS/UFIwbDAvV1dwak0w/NUVWbTFOVkVVeS9X/bGRWZWxoclJYbFlh/MFp4L1kwZGpRQzVx/Y0dj" alt="Scene 3" />
                <img src="https://imgs.search.brave.com/-jv6KojKYm7A4xzvgVmfJJKmZhc5H0WijYMFUniEwi8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vMnR5TW9O/VmVfaU9kUEx6MTZT/SDdTLW1fWV9rU1lY/Wldhck9RZGJLczJ0/cy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTl0/TG0xbC9aR2xoTFdG/dFlYcHZiaTVqL2Iy/MHZhVzFoWjJWekww/MHYvVFZZMVFscFVh/M2haYWtKcS9Xa2RO/ZEZwRVpHdE5VekF3/L1QxUnJOVXhYUlRS/T1JGVjAvVDFSV2Ew/MVVhR3BaVkVreC9U/WHBWZUZoclJYbFlh/MFp4L1kwZGpRQzVx/Y0dj" alt="Scene 4" />
                <img src="https://imgs.search.brave.com/d-0sjt378asbqhiLWublsCkqyi8fNkPyc1KUji74D_A/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWdz/LnNlYXJjaC5icmF2/ZS5jb20vekMwS3V4/cklnOW4yZVNtMEs2/cTVLbkI0TjRnS082/NU1yMHU5UkVEVDA0/Yy9yczpmaXQ6NTAw/OjA6MDowL2c6Y2Uv/YUhSMGNITTZMeTl6/ZEdGMC9hV011WVc1/cGJXVmpiM0p1L1pY/SXViV1V2TWpBeU5T/OHcvTlM4eE56UTNO/REE0TVRNeS9MVFJr/WkRoaE1ERXpOREpq/L01qSmxZalkzWVRk/aE56STMvWVRkaFlt/WmxNR1k0TG1wdy9a/dw" alt="Scene 5" />
        </div>

    </div>
</div>


<!-- About Section -->
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             In Infinity Castle, the Demon Slayer Corps prepare for their most intense and emotionally charged battle yet. After uncovering the location of Muzan Kibutsuji — the original demon and the source of all their suffering — the Hashira and Tanjiro's team are drawn into Infinity Castle, a labyrinthine fortress ruled by demons.
             Inside this ever-shifting stronghold, our heroes face Upper Rank demons in their strongest forms, testing their resolve, skills, and the bonds they’ve formed through unimaginable hardships.
        </p>
    </div>
</div>

</body>
</html>
