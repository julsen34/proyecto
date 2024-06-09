<!-- iniciodesecion.jsp -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="style/sesion.css">
</head>
<body>
    <header>
        <h1>Iniciar Sesión</h1>
    </header>

    <main>
        <section id="formulario">
            <form action="login" method="post">
                <label for="email">Usuario</label>
                <input type="text" id="email" name="email" required>
                
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
                
                <button type="submit">Iniciar Sesión</button>
            </form>
            <p>¿Es tu primera vez aquí? <a href="registrarusuario.jsp">Regístrate</a></p>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Análisis de Imágenes para el Crecimiento de Plantas</p>
    </footer>
</body>
</html>
