<!-- menuprincipal.jsp -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Menú Principal</title>
    <link rel="stylesheet" href="style/menu.css">
</head>
<body>
    <header>
        <h1>Análisis de Imágenes para el Crecimiento de Plantas</h1>
        <nav>
            <ul>
              <li><a href="procesadorDeImagenes.jsp">Procesador de Imágenes</a></li>
              <li><a href="inicio.jsp">Inicio</a></li>
              <li><a href="respuestaIA.jsp">Respuestas IA</a></li>
              <li><a href="historialDeImagenes.jsp">Historial de Imágenes</a></li>
            </ul>
          </nav>
            </header>

    <main>
        <section id="subida-imagen">
            <form action="imageUpload" method="post" enctype="multipart/form-data">
                <label for="file">Sube una imagen:</label>
                <input type="file" id="file" name="file" accept="image/*" required>
                <button type="submit">Subir y Analizar</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Análisis de Imágenes para el Crecimiento de Plantas</p>
    </footer>
</body>
</html>
