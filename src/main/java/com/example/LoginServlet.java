// LoginServlet.java
package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Resource(name = "jdbc/PlantDB")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = dataSource.getConnection()) {
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                response.sendRedirect("menuprincipal.jsp");
            } else {
                response.getWriter().write("Credenciales incorrectas. Por favor, inténtalo de nuevo.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error al iniciar sesión. Por favor, inténtalo de nuevo más tarde.");
        }
    }
}

