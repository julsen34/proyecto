<!-- registrarusuario.jsp -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="style/registro.css">
</head>
<body>
    <header>
        <h1>Registro de Usuario</h1>
    </header>

    <main>
        <section id="formulario">
            <form action="register" method="post">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" required>
                
                <label for="email">Correo Electrónico</label>
                <input type="email" id="email" name="email" required>
                
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
                
                <label for="confirmPassword">Confirmar Contraseña</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                
                <button type="submit">Registrarse</button>
            </form>
            <p>¿Ya tienes una cuenta? <a href="iniciodesecion.jsp">Inicia Sesión</a></p>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Análisis de Imágenes para el Crecimiento de Plantas.</p>
    </footer>
</body>
</html>
