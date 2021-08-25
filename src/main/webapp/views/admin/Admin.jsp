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
    <title>Administrador</title>
</head>
<body class="text-center fondo texto">

    <div class="any">
        <img src="${context}/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
        <img src="${context}/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
        <h1>ASCOVE</h1>
        <h2>Atención de Solicitudes de Comités Vecinales</h2>
        <br>
        <h4>-Gestión de Administradores-</h4>
    </div>

    <nav class="navbar alinear margen7">
        <div class="container-fluid">
            <form class="d-flex">
                <button class="btn boton img.izquierda" type="submit">Cerrar sesión</button>
            </form>
        </div>
    </nav>

    <div class="alinear margen3">
        <a type="button" class="btn boton" data-bs-toggle="modal" data-bs-target="#register" action="${context}/ServletAdmin"> Agregar Administrador</a>
        <input  restrict="reject" class="ng-pristine ng-untouched ng-valid ng-empty" id="numEnlace" placeholder="# Administrador">
        <button class="btn boton" type="submit">Buscar</button>
    </div>
    <div class="alinear3 texto2">
        <table class="table table2">
            <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Nombre Completo</th>
                <th>Calle</th>
                <th>Colonia</th>
                <th>Municipio</th>
                <th>Acción</th>
            </tr>
            </thead>

            <tbody>

                <c:forEach items="${listUsers}" varStatus="envp" var="emp">
                <tr>
                    <td>${envp.count}</td>
                    <td>${ emp.nombreEmpleados } ${emp.ApellidoPaterno} ${emp.ApellidoMaterno}</td>
                    <td>${ emp.Calle }</td>
                    <td>${ emp.Colonia }</td>
                    <td>${ emp.Municipio }</td>

                    <td>
                        <c:if test="${ emp.envp == 1 }">
                            <form action="${context}/getUserById" method="POST" style="display: inline;">
                                <input type="hidden" name="action" value="getUserById">
                                <input type="hidden" name="id" value="${ emp.idEmpleados }">
                                <button type="submit" class="btn btn-outline-primary"><i class="fas fa-edit"></i> Modificar</button>
                            </form>
                            <button id="btn-details-${ envp.count }" data-code="${  emp.idEmpleados }" type="submit" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#details"><i class="fas fa-info-circle"></i> Detalles</button>

                            <button id="btn-delete-${ envp.count }" data-code="${ emp.idEmpleados }" data-text="${ emp.name } ${ emp.aPaternorson }" type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#delete"><i class="fas fa-trash"></i> Eliminar</button>
                        </c:if>


                    </td>
                </tr>
                </c:forEach>

            </tbody>

        </table>
    </div>


<!--MODAL REGISTRAR-->
<form method="POST" action="${context}/createUser">
<div class="modal fade" id="register" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Agregar Administrador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <label>Número Usuario</label>
                <select class="form-select fecha" id="idRol" name="idRol"  >
                    <option value="1">Administrador</option>
                    <option value="2">Enlace</option>
                    <option value="3">Integrante</option>
                    <option value="4">Presidente</option>
                </select>
                <br>
                <label>Nombre:</label>
                <input class="form-control" type="text" name="nombre" />
                <br>
                <label>Apellido Paterno</label>
                <input class="form-control" type="text" name="aPaterno" />
                <br>
                <label>Apellido Materno</label>
                <input class="form-control" type="text" name="aMaterno" />
                <br>
                <label>Calle</label>
                <input class="form-control" type="text" name="calle" />
                <br>
                <label>Colonia</label>
                <input class="form-control" type="text" name="colonia" />
                <br>
                <label>Municipio</label>
                <select class="form-select fecha" id="municipio" name="municipio"  >
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
                <button type="submit" class="btn btn-secondary" ><i class="fas fa-times"></i> Cancelar</button>
                <button type="submit" class="btn btn-success" name="action" value="create"><i class="fas fa-plus"></i> Registrar </button>
            </div>
        </div>
    </div>
</div>
</form>


<!--MODAL ELIMINAR-->
<form action="${context}/deleteUser" method="POST">
    <div class="modal fade" id="delete" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <input type="hidden" name="action" value="delete">
                <div class="modal-header">
                    <h5 class="modal-title">Deshabilitar Enlace</h5>
                    <button type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <label>¿Deshabilitar?</label>
                    <h5 id="text-delete"></h5>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> Cerrar</button>
                    <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i> Eliminar</button>
                </div>
            </div>
        </div>
    </div>
</form>

<!--MODAL DETALLES-->
<form method="POST">
<div class="modal fade" id="details" tabindex="-1" ria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detalles de Administrador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h5># Administrador:</h5>
                <label id="lbl_id"></label>
                <br>
                <h5>Nombre completo:</h5>
                <label id="lbl_nombre"></label>
                <br>
                <h5>Municipio:</h5>
                <label id="lbl_municipio"></label>
                <br>
                <h5>Colonia:</h5>
                <label id="lbl_colonia"></label>
                <br>
                <h5>Calle:</h5>
                <label id="lbl_calle"></label>
                <br>
                <h5>Teléfono:</h5>
                <label id="lbl_telefono"></label>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> Cerrar</button>
            </div>
        </div>
    </div>
</div>
</form>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>
</html>
