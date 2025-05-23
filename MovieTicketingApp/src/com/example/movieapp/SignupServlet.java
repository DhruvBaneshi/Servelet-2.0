package com.example.movieapp;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Connection conn = DBUtil.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users(email,userName, password) VALUES (?,?,?)");
            ps.setString(1, email);
            ps.setString(2, username);
            ps.setString(3,password);
            ps.executeUpdate();
            conn.close();
            response.sendRedirect("home.jsp");
        } catch (Exception e) {
            response.getWriter().println("Signup failed: " + e.getMessage());
        }
    }
}