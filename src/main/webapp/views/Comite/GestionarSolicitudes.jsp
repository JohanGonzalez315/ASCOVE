<%--
  Created by IntelliJ IDEA.
  User: villa
  Date: 24/08/2021
  Time: 12:18 a. m.
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
    <title>Gestion de Solicitudes</title>
</head>
<body class="text-center fondo texto">
<main>
    <div class="any">
        <img src="<%=context%>/assets/img/logo_poder_ejecutivo_2018-2024_25.jpg" class="izquierda" alt="No encontrado">
        <img src="<%=context%>/assets/img/image_750x_5e93e4dd3fa46.jpg" class="derecha" alt = "No Encontrado">
        <h1>ASCOVE</h1>
        <h2>Atención de Solicitudes de Comités Vecinales</h2>
        <br>
        <h4>-Gestión de Solicitudes de Comités-</h4>
    </div>

    <nav class="navbar alinear margen7">
        <div class="container-fluid">
            <form class="d-flex">
                <button class="btn boton img.izquierda" type="submit">Cerrar sesión</button>
            </form>
        </div>
    </nav>

    <div class="alinear margen3">
        <a type="button" class="btn boton" data-bs-toggle="modal" data-bs-target="#addSol">Nueva solicitud</a>
        <input  restrict="reject" class="ng-pristine ng-untouched ng-valid ng-empty" id="numSolicitud" placeholder="# Solicitud">
        <button class="btn boton" type="submit">Buscar</button>
    </div>
    <div class="alinear3 texto2">
        <table class="table table2">
            <thead class="table-dark">
            <tr>
                <th># Solicitud</th>
                <th>Servicio solicitado</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Acción</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${ listSolicitud }" var="game" varStatus="status">
                <tr>
                    <!--<td>${ "" }</td>
                    <td>${ "" }</td>
                    <td>${ "" }</td>game.imgGame }</td>
                    <td>${ "" }</td>
                    <td>
                        <c:if test="${ game.status == 1 }">
                            <span class="badge rounded-pill bg-success">Activo</span>
                        </c:if>
                        <c:if test="${ game.status == 0 }">
                            <span class="badge rounded-pill bg-danger">Inactivo</span>
                        </c:if>
                    </td>
                    <td>
                        <c:if test="${ game.status == 1 }">
                            <form action="${context}/getGame" method="POST" style="display: inline;">
                                <input type="hidden" name="action" value="getUserById">
                                <input type="hidden" name="id" value="${ game.idGame }">
                                <button type="submit" class="btn btn-outline-primary">Modificar</button>
                            </form>
                        </c:if>
                        <c:if test="${ game.status == 0 }">
                            <button id="btn-details-${ status.count }" data-code="${ game.idGame }" type="submit" class="btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#details"><i class="fas fa-info-circle"></i> Detalles</button>
                        </c:if>
                    </td>-->
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</main>


<!--MODAL REGISTRAR-->
<form id="formularioSolicitud" >
    <div class="modal fade" id="addSol" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="POST" action="#">
                    <div class="modal-header">
                        <h5 class="modal-title">Nueva solicitud</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <label>Selecciona el servicio que deseas solicitar</label>
                                    <select class="form-select fecha" id="diaNac" name = "servicioasignado">
                                        <option value="0">Tipo de solicitud</option>
                                        <option value="1">Agua potable y servicios hidráulicos</option>
                                        <option value="2">Asistencia social</option>
                                        <option value="3">Construcciones y obras</option>
                                        <option value="4">Protección civil</option>
                                        <option value="5">Seguridad pública y vialidad</option>
                                        <option value="6">Servicios urbanos, limpia</option>
                                        <option value="7">Chatarrización</option>
                                    </select>
                                    <small class="text-danger form-text"></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-20">
                            <div class="form-group"></div>
                            <div>
                                <p text-muted text-gray-900 class="texto" >Redacte su solicitud de manera clara y concisa</p>
                                <textarea class="alinear5 texto" maxlength="1000"  id="descripcion_solicitud" name = "descripcion"></textarea>
                            </div>
                            <small class="text-danger form-text"></small>
                        </div>
                    </div>
                    <div class="form-control">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <br>
                                    <label>Estado</label>
                                    <input type="number" class="form-control campo" id="estadoSolicitud"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" name = "status" />
                                    <small class="text-danger form-text"></small>
                                </div>
                                <div class="col-lg-6">
                                    <br>
                                    <label>Fecha Inicio</label>
                                    <input type="date" class="form-control campo" id="coloniaEnlace" name = "fechainicio"
                                           pattern="^[a-zA-ZáéíóúÁÉÍÓÚÑñüÜ0-9 ]+" title="Sólo letras" />
                                    <small class="text-danger form-text"></small>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-success" id="GuardarEnlace">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</form>



<!--MODAL ELIMINAR-->
<form method="POST">
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
                    <h5 class="modal-title">Detalles de Solicitud</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h5># Solicitud:</h5>
                    <label id="lbl_id"></label>
                    <br>
                    <h5>Servicio solicitado:</h5>
                    <label id="lbl_servicio"></label>
                    <br>
                    <h5>Descripción:</h5>
                    <label id="lbl_descripcion"></label>
                    <br>
                    <h5>Colonia:</h5>
                    <label id="lbl_colonia"></label>
                    <br>
                    <h5>Estado:</h5>
                    <label id="lbl_estado"></label>
                    <br>
                    <h5>Fecha de inicio:</h5>
                    <label id="lbl_inicio"></label>
                    <br>
                    <h5>Fecha de cierre:</h5>
                    <label id="lbl_cierre"></label>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> Cerrar</button>
                </div>
            </div>
        </div>
    </div>
</form>



<script src="${context}/assets/jquery-3.6.0.min.map" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
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