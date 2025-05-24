<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demon Slayer - Kimetsu no Yaiba: Infinity Castle</title>
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
            flex-wrap: wrap;
            padding: 40px;
            gap: 40px;
        }

        .poster {
            flex: 1 1 300px;
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
            flex: 2 1 500px;
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
            line-height: 1.5;
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
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .gallery img {
            max-width: 135px;
            height: auto;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .gallery img:hover {
            transform: scale(2.5);
            z-index: 10;
            position: relative;
            background-color: #111;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
        }

        .about {
            margin-top: 40px;
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

<%@
String movieId = request.getParameter("movieId");
switch (movieId){
case "1":
%@>
<div class="container">
    <div class="poster">
        <img src="data:image/jpeg;base64,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"Poster"/>
    </div>
    <div class="details">
        <div class="title">Avengers Endgame</div>
        <div class="rating">⭐ 8.4/10 (1.4M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 3h 1m<br/>
            <b>Genres:</b> Action, Space Sci-Fi, Superhero<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://i.redd.it/a40iui20osh61.jpg" alt="Scene 1" />
                <img src="https://pbs.twimg.com/media/D4jDrijU0AAera6?format=jpg&name=4096x4096" alt="Scene 2" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/p/y/q/medium-endgamecastcombo-avengers-endgame-set-of-8-posters-for-original-imafgy6hfhnuz9b8.jpeg?q=90&crop=false" alt="Scene 3" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/h/m/h/medium-endgameart-capt-america-avengers-endgame-new-poster-original-imafgy6yft4zyuka.jpeg?q=20&crop=false" alt="Scene 4" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/h/c/t/medium-endgameart-natasha-avengers-endgame-new-poster-original-imafgy5fu88c8xh9.jpeg?q=90&crop=false" alt="Scene 5" />
        </div>

<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             Avengers: Endgame is the epic conclusion to the Marvel Cinematic Universe's Infinity Saga, directed by Anthony and Joe Russo. Following the devastating events of Avengers: Infinity War, in which the villain Thanos wiped out half of all life in the universe, the surviving Avengers must regroup and devise a bold plan to undo the destruction. Combining time travel, emotional reunions, and explosive action, the heroes face their greatest challenge yet — risking everything to restore balance to the universe
        </p>
    </div>
</div>
break;



case "2":
<div class="container">
    <div class="poster">
        <img src="https://www.originalfilmart.co.uk/cdn/shop/products/Interstellar_2014_advance_original_film_art_5000x.jpg?v=1600954203" alt="Poster"/>
    </div>
    <div class="details">
        <div class="title">Interstellar</div>
        <div class="rating">⭐ 8.7/10 (2.3M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 3h 1m<br/>
            <b>Genres:</b> Adeventure, Space Sci-Fi, Time Travel<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://static.wikia.nocookie.net/interstellarfilm/images/6/6b/Interstellar_poster_9.jpg/revision/latest/scale-to-width-down/250?cb=20160116232130" alt="Scene 1" />
                <img src="https://www.tallengestore.com/cdn/shop/products/INST12_1_8c11681b-64ab-472d-a377-8ae37936957c.jpg?v=1569292611" alt="Scene 2" />
                <img src="https://i.ebayimg.com/images/g/wbgAAOSwpTBkojnL/s-l1200.jpg" alt="Scene 3" />
                <img src="https://preview.redd.it/4qc2jc9002e61.jpg?width=1080&crop=smart&auto=webp&s=103d531c6526ce592d9dd2d1a3838f2ad992c4af" alt="Scene 4" />
                <img src="https://posterspy.com/wp-content/uploads/2023/08/interstellar.jpg" alt="Scene 5" />
        </div>
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             "Mankind was born on Earth... but it was never meant to die here." In a future where Earth is dying, one man must leave everything behind — including his family — to journey across the stars. Through a mysterious wormhole, he and a team of explorers will face the unknown, racing against time to save humanity. From director Christopher Nolan comes a mind-bending sci-fi epic about love, sacrifice, and the fate of our world.
        </p>
    </div>
</div>
break;



case "3":
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
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             In Infinity Castle, the Demon Slayer Corps prepare for their most intense and emotionally charged battle yet. After uncovering the location of Muzan Kibutsuji — the original demon and the source of all their suffering — the Hashira and Tanjiro's team are drawn into Infinity Castle, a labyrinthine fortress ruled by demons.
             Inside this ever-shifting stronghold, our heroes face Upper Rank demons in their strongest forms, testing their resolve, skills, and the bonds they’ve formed through unimaginable hardships.
        </p>
    </div>
</div>
break;


case "4":
<div class="container">
    <div class="poster">
        <img src="https://www.originalfilmart.co.uk/cdn/shop/products/Interstellar_2014_advance_original_film_art_5000x.jpg?v=1600954203" alt="Poster"/>
    </div>
    <div class="details">
        <div class="title">Inception</div>
        <div class="rating">⭐ 8.8/10 (2.7M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 2h 28m<br/>
            <b>Genres:</b> Psychological Thriller, Action, Epic<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://www.tallengestore.com/cdn/shop/products/Inception-LeonardoDiCaprio-ChristopherNolan-HollywoodSciFiMovieGraphicArtPoster5_large.jpg?v=1685581998" alt="Scene 1" />
                <img src="https://c8.alamy.com/comp/2JKY37K/leonardo-dicaprio-inception-2010-2JKY37K.jpg" alt="Scene 2" />
                <img src="https://i.redd.it/rcrr8tj4y0bc1.png" alt="Scene 3" />
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnracCmQMiDr9x81NJpV9KqoONtgREyLLnw&s" alt="Scene 4" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/kmns7m80/poster/1/m/8/medium-inception-maxi-origins-jumbo-medium-size-painting-poster-original-imagfgb6tgmkgyz8.jpeg?q=90&crop=false" alt="Scene 5" />
        </div>
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>Dom Cobb is a thief who doesn’t steal gold or jewels — he steals secrets buried deep within the subconscious. But now, he’s been offered a chance at redemption: to plant an idea so powerful, it could change everything.

To do it, Cobb and his team must descend through layers of dreams, navigating a labyrinth where time distorts, memories twist, and nothing is truly real. But with every step deeper, the line between waking and sleeping fades… and shadows from Cobb’s own past begin to close in.

In a world where your mind is both the playground and the prison, who controls the dream controls reality.
        </p>
    </div>
</div>
break;

default:
            0;
}
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demon Slayer - Kimetsu no Yaiba: Infinity Castle</title>
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
            flex-wrap: wrap;
            padding: 40px;
            gap: 40px;
        }

        .poster {
            flex: 1 1 300px;
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
            flex: 2 1 500px;
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
            line-height: 1.5;
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
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .gallery img {
            max-width: 135px;
            height: auto;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .gallery img:hover {
            transform: scale(2.5);
            z-index: 10;
            position: relative;
            background-color: #111;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
        }

        .about {
            margin-top: 40px;
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

<%
String movieId = request.getParameter("movieId");
switch (movieId){
case "1":
%>
<div class="container">
    <div class="poster">
        <img src="data:image/jpeg;base64,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"Poster"/>
    </div>
    <div class="details">
        <div class="title">Avengers Endgame</div>
        <div class="rating">⭐ 8.4/10 (1.4M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 3h 1m<br/>
            <b>Genres:</b> Action, Space Sci-Fi, Superhero<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://i.redd.it/a40iui20osh61.jpg" alt="Scene 1" />
                <img src="https://pbs.twimg.com/media/D4jDrijU0AAera6?format=jpg&name=4096x4096" alt="Scene 2" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/p/y/q/medium-endgamecastcombo-avengers-endgame-set-of-8-posters-for-original-imafgy6hfhnuz9b8.jpeg?q=90&crop=false" alt="Scene 3" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/h/m/h/medium-endgameart-capt-america-avengers-endgame-new-poster-original-imafgy6yft4zyuka.jpeg?q=20&crop=false" alt="Scene 4" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/jv19qq80/poster/h/c/t/medium-endgameart-natasha-avengers-endgame-new-poster-original-imafgy5fu88c8xh9.jpeg?q=90&crop=false" alt="Scene 5" />
        </div>

<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             Avengers: Endgame is the epic conclusion to the Marvel Cinematic Universe's Infinity Saga, directed by Anthony and Joe Russo. Following the devastating events of Avengers: Infinity War, in which the villain Thanos wiped out half of all life in the universe, the surviving Avengers must regroup and devise a bold plan to undo the destruction. Combining time travel, emotional reunions, and explosive action, the heroes face their greatest challenge yet — risking everything to restore balance to the universe
        </p>
    </div>
</div>
<% break; %>



<% case "2": %>
<div class="container">
    <div class="poster">
        <img src="https://www.originalfilmart.co.uk/cdn/shop/products/Interstellar_2014_advance_original_film_art_5000x.jpg?v=1600954203" alt="Poster"/>
    </div>
    <div class="details">
        <div class="title">Interstellar</div>
        <div class="rating">⭐ 8.7/10 (2.3M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 3h 1m<br/>
            <b>Genres:</b> Adeventure, Space Sci-Fi, Time Travel<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://static.wikia.nocookie.net/interstellarfilm/images/6/6b/Interstellar_poster_9.jpg/revision/latest/scale-to-width-down/250?cb=20160116232130" alt="Scene 1" />
                <img src="https://www.tallengestore.com/cdn/shop/products/INST12_1_8c11681b-64ab-472d-a377-8ae37936957c.jpg?v=1569292611" alt="Scene 2" />
                <img src="https://i.ebayimg.com/images/g/wbgAAOSwpTBkojnL/s-l1200.jpg" alt="Scene 3" />
                <img src="https://preview.redd.it/4qc2jc9002e61.jpg?width=1080&crop=smart&auto=webp&s=103d531c6526ce592d9dd2d1a3838f2ad992c4af" alt="Scene 4" />
                <img src="https://posterspy.com/wp-content/uploads/2023/08/interstellar.jpg" alt="Scene 5" />
        </div>
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             "Mankind was born on Earth... but it was never meant to die here." In a future where Earth is dying, one man must leave everything behind — including his family — to journey across the stars. Through a mysterious wormhole, he and a team of explorers will face the unknown, racing against time to save humanity. From director Christopher Nolan comes a mind-bending sci-fi epic about love, sacrifice, and the fate of our world.
        </p>
    </div>
</div>
<% break; %>



<% case "3": %>
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
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>
             In Infinity Castle, the Demon Slayer Corps prepare for their most intense and emotionally charged battle yet. After uncovering the location of Muzan Kibutsuji — the original demon and the source of all their suffering — the Hashira and Tanjiro's team are drawn into Infinity Castle, a labyrinthine fortress ruled by demons.
             Inside this ever-shifting stronghold, our heroes face Upper Rank demons in their strongest forms, testing their resolve, skills, and the bonds they’ve formed through unimaginable hardships.
        </p>
    </div>
</div>
<%@ break; %@>


<% case "4": %>
<div class="container">
    <div class="poster">
        <img src="https://www.originalfilmart.co.uk/cdn/shop/products/Interstellar_2014_advance_original_film_art_5000x.jpg?v=1600954203" alt="Poster"/>
    </div>
    <div class="details">
        <div class="title">Inception</div>
        <div class="rating">⭐ 8.8/10 (2.7M Votes)</div>
        <div class="info">
            <b>Languages:</b> English, Hindi, Telugu, Tamil<br/>
            <b>Formats:</b> 2D, MX4D, 4DX, ICE<br/>
            <b>Duration:</b> 2h 28m<br/>
            <b>Genres:</b> Psychological Thriller, Action, Epic<br/>
            <b>Release Date:</b> 15 May, 2025<br/>
            <b>Rating:</b> A
        </div>
        <button class="book-btn">Book Tickets</button><br>
        <div class="gallery">
                <img src="https://www.tallengestore.com/cdn/shop/products/Inception-LeonardoDiCaprio-ChristopherNolan-HollywoodSciFiMovieGraphicArtPoster5_large.jpg?v=1685581998" alt="Scene 1" />
                <img src="https://c8.alamy.com/comp/2JKY37K/leonardo-dicaprio-inception-2010-2JKY37K.jpg" alt="Scene 2" />
                <img src="https://i.redd.it/rcrr8tj4y0bc1.png" alt="Scene 3" />
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnracCmQMiDr9x81NJpV9KqoONtgREyLLnw&s" alt="Scene 4" />
                <img src="https://rukminim2.flixcart.com/image/850/1000/kmns7m80/poster/1/m/8/medium-inception-maxi-origins-jumbo-medium-size-painting-poster-original-imagfgb6tgmkgyz8.jpeg?q=90&crop=false" alt="Scene 5" />
        </div>
<div class="container">
    <div class="about">
        <h2>About the movie</h2>
        <p>Dom Cobb is a thief who doesn’t steal gold or jewels — he steals secrets buried deep within the subconscious. But now, he’s been offered a chance at redemption: to plant an idea so powerful, it could change everything.

To do it, Cobb and his team must descend through layers of dreams, navigating a labyrinth where time distorts, memories twist, and nothing is truly real. But with every step deeper, the line between waking and sleeping fades… and shadows from Cobb’s own past begin to close in.

In a world where your mind is both the playground and the prison, who controls the dream controls reality.
        </p>
    </div>
</div>
<% <break; 

default:
            0;
} %>
</body>
</html>
