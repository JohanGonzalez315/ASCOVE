
// Formulario gestion de empleados
var gestionEmpleados = []
let onLoad2 = () => {
    let validarEmpleados = () => {
        let idEmpleado = document.getElementById("idEmpleado").value
        let nombreEmpleado = document.getElementById("nombreEmpleado").value
        let apellidoPatEmpleado = document.getElementById("apellidoPatEmpleado").value
        let apellidoMatEmpleado = document.getElementById("apellidoMatEmpleado").value
        let calleEmpleado = document.getElementById("calleEmpleado").value
        let coloniaEmpleado = document.getElementById("coloniaEmpleado").value
        let municipioEmpleado = document.getElementById("municipioEmpleado").value
        let telefonoEmpleado = document.getElementById("telefonoEmpleado").value
        let areaTrabEmpleado = document.getElementById("areaTrabEmpleado").value
       
        let validacion = true
        if(idEmpleado == ""){
            validacion = false
        }
        if(nombreEmpleado == ""){
            validacion = false
        }
        if(apellidoPatEmpleado == ""){
            validacion = false
        }
        if(apellidoMatEmpleado == ""){
            validacion = false
        }
        if(calleEmpleado == ""){
            validacion = false
        }
        if(coloniaEmpleado == ""){
            validacion = false
        }
        if(municipioEmpleado == ""){
            validacion = false
        }
        if(telefonoEmpleado == ""){
            validacion = false
        }
        if(areaTrabEmpleado == ""){
            validacion = false
        }        
        return validacion
    }
    let limpiarEmpleados = () => {
        document.getElementById("formularioEmpleados").reset()
    }
    let GuardarEmpleado = () => {        
        let idEmpleado = document.getElementById("idEmpleado").value
        let nombreEmpleado = document.getElementById("nombreEmpleado").value
        let apellidoPatEmpleado = document.getElementById("apellidoPatEmpleado").value
        let apellidoMatEmpleado = document.getElementById("apellidoMatEmpleado").value
        let calleEmpleado = document.getElementById("calleEmpleado").value
        let coloniaEmpleado = document.getElementById("coloniaEmpleado").value
        let municipioEmpleado = document.getElementById("municipioEmpleado").value
        let telefonoEmpleado = document.getElementById("telefonoEmpleado").value
        let areaTrabEmpleado = document.getElementById("areaTrabEmpleado").value
       
        let objeto = { idEmpleado: idEmpleado,  nombreEmpleado: nombreEmpleado ,apellidoPatEmpleado: apellidoPatEmpleado,
            apellidoMatEmpleado: apellidoMatEmpleado , calleEmpleado: calleEmpleado, 
            coloniaEmpleado: coloniaEmpleado, municipioEmpleado: municipioEmpleado, 
            telefonoEmpleado: telefonoEmpleado, areaTrabEmpleado: areaTrabEmpleado}
        if(validarEmpleados()){
            gestionEmpleados.push(objeto)
            limpiarEmpleados()
        }else{
            alert("Datos obligatorios")
        }
        document.getElementById("listaEmpleados").innerHTML = ""
        let tablaEmpleados = `<table class="table2 table table-striped">
        <thead class="table-dark">
            <tr>
                <th>Id</th>
                <th>Nombre(s)</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Calle</th>
                <th>Colonia</th>
                <th>Municipio</th>
                <th>Teléfono</th>
                <th>Area trabajo</th>
            </tr>
        </thead>
        <tbody>`
        gestionEmpleados.forEach(elemento => {
        tablaEmpleados +=`<tr>
                    <td>${elemento.idEmpleado}</td>
                    <td>${elemento.nombreEmpleado}</td>
                    <td>${elemento.apellidoPatEmpleado}</td>
                    <td>${elemento.apellidoMatEmpleado}</td>
                    <td>${elemento.calleEmpleado}</td>
                    <td>${elemento.coloniaEmpleado}</td>
                    <td>${elemento.municipioEmpleado}</td>     
                    <td>${elemento.telefonoEmpleado}</td>
                    <td>${elemento.areaTrabEmpleado}</td>                  
                </tr>`                
        })
        tablaEmpleados += `</tbody></table>`
        document.getElementById("listaEmpleados").innerHTML = tablaEmpleados
    }
    document.getElementById("GuardarEmpleado").addEventListener("click", GuardarEmpleado);
}
document.addEventListener("DOMContentLoaded", onLoad2);
