<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 24/08/2021
  Time: 12:57 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String context = request.getContextPath(); %>
<html lang="en">
<head>
  <link rel="shortcut icon" href="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="Lucía Zamudio, Julio Gutierrez, Isaac Galindo, Gonzalez Fernanda, Solís Pablo">
  <meta name="generator" content="ASCOVE">
  <link rel="stylesheet" href="<%=context%>/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=context%>/assets/css/styles.css">
  <title>Enlace</title>
</head>
<body class="text-center fondo texto">
<main>
  <div class="any">
    <img src="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
    <img src="<%=context%>/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
    <h1>ASCOVE</h1>
    <h2>Atención de Solicitudes de Comités Vecinales</h2>
    <br>
    <h4>-Enlace-</h4>
  </div>

  <nav class="navbar alinear margen7 margen3">
    <div class="container-fluid">
      <form class="d-flex">
        <button class="btn boton img.izquierda" type="submit">Cerrar sesión</button>
      </form>
    </div>
  </nav>

  <div class="alinear margen3">
    <a href="<%=context%>/views/Enlace/GestionarComites.jsp"><button class="btn boton" type="button">Gestionar Comités</button></a>
    <a href="<%=context%>/views/Enlace/GestionarSolicitud.jsp"><button class="btn boton" type="button">Gestionar Solicitudes</button></a>
  </div>
  <div class="alinear3 texto2">
    <table class="table table2">
    </table>
  </div>

</main>

</body>
</html>