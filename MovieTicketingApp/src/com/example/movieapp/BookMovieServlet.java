package com.example.movieapp;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/book")
public class BookMovieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        int movieId = Integer.parseInt(request.getParameter("movieId"));
        try {
            Connection conn = DBUtil.getConnection();
            PreparedStatement ps1 = conn.prepareStatement("SELECT id FROM users WHERE email=?");
            ps1.setString(1, email);
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                int userId = rs.getInt("id");
                PreparedStatement ps2 = conn.prepareStatement("INSERT INTO tickets(user_id, movie_id) VALUES (?, ?)");
                ps2.setInt(1, userId);
                ps2.setInt(2, movieId);
                ps2.executeUpdate();
            }
            conn.close();
            response.sendRedirect("view_tickets.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}