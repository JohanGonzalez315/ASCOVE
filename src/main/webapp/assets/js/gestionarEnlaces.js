
// Formulario gestion de empleados
var gestionEnlaces = []
let onLoad3 = () => {
    let validarEnlace = () => {
        let idEnlace = document.getElementById("idEnlace").value
        let nombreEnlace = document.getElementById("nombreEnlace").value
        let apellidoPatEnlace = document.getElementById("apellidoPatEnlace").value
        let apellidoMatEnlace = document.getElementById("apellidoMatEnlace").value
        let calleEnlace = document.getElementById("calleEnlace").value
        let coloniaEnlace = document.getElementById("coloniaEnlace").value
        let municipioEnlace = document.getElementById("municipioEnlace").value
        let telefonoEnlace = document.getElementById("telefonoEnlace").value
       
        let validacion = true
        if(idEnlace == ""){
            validacion = false
        }
        if(nombreEnlace == ""){
            validacion = false
        }
        if(apellidoPatEnlace == ""){
            validacion = false
        }
        if(apellidoMatEnlace == ""){
            validacion = false
        }
        if(calleEnlace == ""){
            validacion = false
        }
        if(coloniaEnlace == ""){
            validacion = false
        }
        if(municipioEnlace == ""){
            validacion = false
        }
        if(telefonoEnlace == ""){
            validacion = false
        }     
        return validacion
    }
    let limpiarEnlace = () => {
        document.getElementById("formularioEnlaces").reset()
    }
    let GuardarEnlace = () => {        
        let idEnlace = document.getElementById("idEnlace").value
        let nombreEnlace = document.getElementById("nombreEnlace").value
        let apellidoPatEnlace = document.getElementById("apellidoPatEnlace").value
        let apellidoMatEnlace = document.getElementById("apellidoMatEnlace").value
        let calleEnlace = document.getElementById("calleEnlace").value
        let coloniaEnlace = document.getElementById("coloniaEnlace").value
        let municipioEnlace = document.getElementById("municipioEnlace").value
        let telefonoEnlace = document.getElementById("telefonoEnlace").value
       
        let objeto = { idEnlace: idEnlace,  nombreEnlace: nombreEnlace ,apellidoPatEnlace: apellidoPatEnlace,
            apellidoMatEnlace: apellidoMatEnlace , calleEnlace: calleEnlace, 
            coloniaEnlace: coloniaEnlace, municipioEnlace: municipioEnlace, 
            telefonoEnlace: telefonoEnlace}
        if(validarEnlace()){
            gestionEnlaces.push(objeto)
            limpiarEnlace()
        }else{
            alert("Datos obligatorios")
        }
        document.getElementById("listaEnlaces").innerHTML = ""
        let tablaEnlaces = `<table class="table2 table table-striped">
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
            </tr>
        </thead>
        <tbody>`
        gestionEnlaces.forEach(elemento => {
        tablaEnlaces +=`<tr>
                    <td>${elemento.idEnlace}</td>
                    <td>${elemento.nombreEnlace}</td>
                    <td>${elemento.apellidoPatEnlace}</td>
                    <td>${elemento.apellidoMatEnlace}</td>
                    <td>${elemento.calleEnlace}</td>
                    <td>${elemento.coloniaEnlace}</td>
                    <td>${elemento.municipioEnlace}</td>     
                    <td>${elemento.telefonoEnlace}</td>
                </tr>`                
        })
        tablaEnlaces += `</tbody></table>`
        document.getElementById("listaEnlaces").innerHTML = tablaEnlaces
    }
    document.getElementById("GuardarEnlace").addEventListener("click", GuardarEnlace);
}
document.addEventListener("DOMContentLoaded", onLoad3);
