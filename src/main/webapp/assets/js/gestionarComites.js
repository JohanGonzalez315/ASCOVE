// Formulario para gestion de comites 
var gestionComites = []
let onLoad = () => {
    let validarComite = () => {
        let numeroComite = document.getElementById("numeroComite").value
        let colonia = document.getElementById("colonia").value
        let municipio = document.getElementById("municipio").value
        let nombrePresidente = document.getElementById("nombrePresidente").value
        let apellidoPatPresidente = document.getElementById("apellidoPatPresidente").value
        let telefonoPresidente = document.getElementById("telefonoPresidente").value
        let nombreSecretario = document.getElementById("nombreSecretario").value
        let apellidoPatSecretario = document.getElementById("apellidoPatSecretario").value
        let nombreTesorero = document.getElementById("nombreTesorero").value
        let apellidoPatTesorero = document.getElementById("apellidoPatTesorero").value
        let nombreVocal = document.getElementById("nombreVocal").value
        let apellidoPatVocal = document.getElementById("apellidoPatVocal").value
        let validacion = true
        if(numeroComite == ""){
            validacion = false
        }
        if(colonia == ""){
            validacion = false
        }
        if(municipio == ""){
            validacion = false
        }
        if(nombrePresidente == ""){
            validacion = false
        }
        if(apellidoPatPresidente == ""){
            validacion = false
        }
        if(telefonoPresidente == ""){
            validacion = false
        }
        if(nombreSecretario == ""){
            validacion = false
        }
        if(apellidoPatSecretario == ""){
            validacion = false
        }
        if(nombreTesorero == ""){
            validacion = false
        }
        if(apellidoPatTesorero == ""){
            validacion = false
        }
        if(nombreVocal == ""){
            validacion = false
        }
        if(apellidoPatVocal == ""){
            validacion = false
        }
        return validacion
    }
    let limpiarComite = () => {
        document.getElementById("formularioComite").reset()
    }
    let GuardarComite = () => {        
        let numeroComite = document.getElementById("numeroComite").value
        let colonia = document.getElementById("colonia").value
        let municipio = document.getElementById("municipio").value
        let nombrePresidente = document.getElementById("nombrePresidente").value
        let apellidoPatPresidente = document.getElementById("apellidoPatPresidente").value
        let apellidoMatPresidente = document.getElementById("apellidoMatPresidente").value
        let telefonoPresidente = document.getElementById("telefonoPresidente").value
        let nombreSecretario = document.getElementById("nombreSecretario").value
        let apellidoPatSecretario = document.getElementById("apellidoPatSecretario").value
        let apellidoMatSecretario = document.getElementById("apellidoMatSecretario").value
        let nombreTesorero = document.getElementById("nombreTesorero").value
        let apellidoPatTesorero = document.getElementById("apellidoPatTesorero").value
        let apellidoMatTesorero = document.getElementById("apellidoMatTesorero").value
        let nombreVocal = document.getElementById("nombreVocal").value
        let apellidoPatVocal = document.getElementById("apellidoPatVocal").value
        let apellidoMatVocal = document.getElementById("apellidoMatVocal").value
        
        let objeto = { numeroComite: numeroComite,  colonia: colonia ,municipio: municipio,
            nombrePresidente: nombrePresidente , apellidoPatPresidente: apellidoPatPresidente, 
            apellidoMatPresidente: apellidoMatPresidente, telefonoPresidente: telefonoPresidente, 
            nombreSecretario: nombreSecretario, apellidoPatSecretario: apellidoPatSecretario, 
            apellidoMatSecretario: apellidoMatSecretario , nombreTesorero: nombreTesorero, 
            apellidoPatTesorero: apellidoPatTesorero, apellidoMatTesorero: apellidoMatTesorero, 
            nombreVocal: nombreVocal, apellidoPatVocal: apellidoPatVocal, apellidoMatVocal: apellidoMatVocal }

        if(validarComite()){
            gestionComites.push(objeto)
            limpiarComite()
        }else{
            alert("Datos obligatorios")
        }
        document.getElementById("listaComite").innerHTML = ""
        let tablaComite = `<table class="table2 table table-striped">
        <thead class="table-dark">
            <tr>
                <th>Id comité</th>
                <th>Colonia</th>
                <th>Municipio</th>
                <th>Nombre(s)</th>
                <th>Apellido Paterno</th>      
                <th>Apellido Materno</th>
                <th>Puesto</th>                                   
                <th>Teléfono</th> 
            </tr>
        </thead>
        <tbody>`
        gestionComites.forEach(elemento => {
        tablaComite +=`<tr>
                    <td>${elemento.numeroComite}</td>
                    <td>${elemento.colonia}</td>
                    <td>${elemento.municipio}</td>
                    <td>${elemento.nombrePresidente}</td>
                    <td>${elemento.apellidoPatPresidente}</td>
                    <td>${elemento.apellidoMatPresidente}</td>
                    <td>Presidente</td>
                    <td>${elemento.telefonoPresidente}</td>                    
                </tr>
                <tr>  
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td>${elemento.nombreSecretario}</td>
                    <td>${elemento.apellidoPatSecretario}</td>
                    <td>${elemento.apellidoMatSecretario}</td>
                    <td>Secretario(a)</td>
                    <td> </td>
                </tr>
                <tr>        
                    <td> </td>
                    <td> </td>
                    <td> </td>  
                    <td>${elemento.nombreTesorero}</td>
                    <td>${elemento.apellidoPatTesorero}</td>
                    <td>${elemento.apellidoMatTesorero}</td>
                    <td>Tesorero(a)</td>
                    <td> </td>
                </tr>
                <tr>        
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td>${elemento.nombreVocal}</td>
                    <td>${elemento.apellidoPatVocal}</td>
                    <td>${elemento.apellidoMatVocal}</td>
                    <td>Vocal</td>
                    <td> </td>
                </tr>`

        })
        tablaComite += `</tbody></table>`
        document.getElementById("listaComite").innerHTML = tablaComite
    }
    document.getElementById("GuardarComite").addEventListener("click", GuardarComite)
}
document.addEventListener("DOMContentLoaded", onLoad);

