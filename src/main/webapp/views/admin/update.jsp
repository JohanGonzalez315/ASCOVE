<%--
  Created by IntelliJ IDEA.
  User: Black
  Date: 25/08/2021
  Time: 04:04 a. m.
  To change this template use File | Settings | File Templates.
--%>
%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Modificar Usuario </title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
</head>
<body>
<form method="POST" action="${context}/updateUser">

    <input type="hidden" value="update" name="action">
    <input type="hidden" value="${ emp.id }" name="id">

    <label>Número Usuario</label>

    <br>
    <select class="form-select fecha" id="idRol" name="idRol">
        <option value="1">Administrador</option>
        <option value="2">Enlace</option>
        <option value="3">Integrante</option>
        <option value="4">Presidente</option>
    </select>
    <br>

    <label>Nombre:</label>
    <input class="form-control" type="text" name="name" value="${ emp.id.Nombre }"/>
    <br>

    <label>Apellido Paterno</label>
    <input class="form-control" type="text" name="name" value="${ emp.id.aPaterno }"/>

    <br>
    <label>Apellido Materno</label>
    <input class="form-control" type="text" name="aMaterno"/>
    <input class="form-control" type="text" name="name" value="${ emp.id.aMaterno }"/>
    <br>
    <label>Calle</label>

    <input class="form-control" type="text" name="name" value="${ emp.calle }"/>
    <br>
    <label>Colonia</label>
    <input class="form-control" type="text" name="colonia"/>
    <input class="form-control" type="text" name="name" value="${ emp.colonia }"/>
    <br>
    <label>Municipio</label>

    <select class="form-select fecha" id="municipio" name="municipio">
        <option value="0" class="text-muted text-gray-900">Selecciona una opción</option>
        <option value="1">Amacuzac</option>
        <option value="2">Atlatlahucan</option>
        <option value="3">Axochiapan</option>
        <option value="4">Ayala</option>
        <option value="5">Coatlán del Río</option>
        <option value="6">Cuautla</option>
        <option value="7">Cuernavaca</option>
        <option value="8">Emiliano Zapata</option>
        <option value="9">Huitzilac</option>
        <option value="10">Jantetelco</option>
        <option value="11">Jiutepec</option>
        <option value="12">Jojutla</option>
        <option value="13">Jonacatepec</option>
        <option value="14">Mazatepec</option>
        <option value="15">Miacatlán</option>
        <option value="16">Ocuituco</option>
        <option value="17">Puente de Ixtla</option>
        <option value="18">Temixco</option>
        <option value="19">Temoac</option>
        <option value="20">Tepalcingo</option>
        <option value="21">Tepoztlán</option>
        <option value="22">Tetecala</option>
        <option value="23">Tetela del Volcán</option>
        <option value="24">Tlalnepantla</option>
        <option value="25">Tlaltizapán</option>
        <option value="26">Tlaquiltenango</option>
        <option value="27">Tlayacapan</option>
        <option value="28">Xochitepec</option>
        <option value="29">Zacatepec</option>
        <option value="30">Zacualpan</option>
        <option value="31">Totolapan</option>
        <option value="32">Yautepec</option>
        <option value="33">Yecapixtla</option>
    </select>
    <br>
    <br>
    <button type="submit" class="btn btn-secondary"><i class="fas fa-times"></i> Cancelar</button>
    <button type="submit" class="btn btn-success" name="action" value="create"><i class="fas fa-plus"></i> Registrar
    </button>
    </div>
    </div>
    </div>
    </div>
</form>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>

</body>
</html>
