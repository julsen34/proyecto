//RegisterServlet.java

package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Resource(name = "jdbc/PlantDB")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = dataSource.getConnection()) {
            String sql = "INSERT INTO users (nombre, email, password) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, nombre);
            statement.setString(2, email);
            statement.setString(3, password);
            statement.executeUpdate();
            response.sendRedirect("inicio.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error al registrar usuario. Por favor, inténtalo de nuevo más tarde.");
        }
    }
}
