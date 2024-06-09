<!-- procesadorDeImagenes.html -->

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Procesador de Imágenes</title>
  <link href="./style/style.css" rel="stylesheet" type="text/css">
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
    <section>
      <h2>Procesador de Imágenes</h2>
      <p>En esta sección puedes cargar y procesar imágenes de tus plantas para realizar análisis detallados.</p>
      <form id="uploadForm" action="/uploads" method="post" enctype="multipart/form-data">
        <input type="file" name="image" id="image" accept="image/*">
        <button type="submit">Procesar Imagen</button>
      </form>
      
      <div id="imagePreview"></div>
      <div id="responseContainer"></div>
      <div id="imageHistory"></div>
    </section>
  </main>
  <footer>
    <p>&copy; 2024 Análisis de Imágenes para el Crecimiento de Plantas</p>
  </footer>
  <script type="module" src="../public/src/imageProcessor.mjs"></script>
</body>
</html>