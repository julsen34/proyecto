// ImageUploadServlet.java
package com.example;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

@WebServlet("/imageUpload")
@MultipartConfig
public class ImageUploadServlet extends HttpServlet {

    @Resource(name = "jdbc/PlantDB")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        String uploadDir = getServletContext().getRealPath("") + "uploads";
        File uploadDirFile = new File(uploadDir);
        if (!uploadDirFile.exists()) uploadDirFile.mkdirs();

        String filePath = uploadDir + File.separator + fileName;
        filePart.write(filePath);

        // Simulate analysis
        String analysisResult = "Resultados de análisis simulados";

        try (Connection connection = dataSource.getConnection()) {
            String sql = "INSERT INTO image_history (imageSrc, response) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, filePath);
            statement.setString(2, analysisResult);
            statement.executeUpdate();
            response.getWriter().write("Imagen subida y analizada con éxito. " + analysisResult);
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error al analizar la imagen. Por favor, inténtalo de nuevo más tarde.");
        }
    }
}

