<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
    <link rel="shortcut icon" href="${context}/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Lucía Zamudio, Julio Gutierrez, Isaac Galindo, Gonzalez Fernanda, Solís Pablo">
    <meta name="generator" content="ASCOVE">
    <link rel="stylesheet" href="${context}/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/css/styles.css">
    <title>ASCOVE</title>
</head>

<body class="text-center fondo texto">
<main class="form-signin ">
    <!-- Todos los form deben llevar un method en este caso POST para enviar los datos al servlet-->
    <form class="" method="post" action="${context}/loginUser">
        <div class="any">
            <img src="${context}/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
            <img src="${context}/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
            <h1>ASCOVE</h1>
            <h2>Atención de Solicitudes de Comités Vecinales</h2>
        </div>
        <h3>Iniciar sesión</h3>
        <div class="form-floating">
            <input class="form-control" id="floatingInput" placeholder="name" name="correo">
            <label for="floatingInput">Nombre de usuario</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="contra">
            <label for="floatingPassword">Contraseña</label>
        </div>

        <div>
            <button class="btn boton" type="submit" name="action" value="login">Ingresar</button><br><br>
        </div>
    </form>
</main>
</body>
</html>