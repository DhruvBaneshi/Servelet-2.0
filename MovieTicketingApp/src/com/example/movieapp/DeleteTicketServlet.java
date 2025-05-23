package com.example.movieapp;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/delete")
public class DeleteTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ticketId = Integer.parseInt(request.getParameter("ticketId"));
        try {
            Connection conn = DBUtil.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM tickets WHERE id=?");
            ps.setInt(1, ticketId);
            ps.executeUpdate();
            conn.close();
            response.sendRedirect("view_tickets.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
