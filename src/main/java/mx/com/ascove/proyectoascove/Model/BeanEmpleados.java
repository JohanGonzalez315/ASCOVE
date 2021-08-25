package mx.com.ascove.proyectoascove.Model;

import mx.com.ascove.proyectoascove.Model.Roles.BeanRoles;
import mx.com.ascove.proyectoascove.Model.Usuario.BeanUsuario;

public class BeanEmpleados {

    private int idEmpleado;
    private String nombreEmpleados;
    private String aPaterno;
    private String aMaterno;
    private String calle;
    private String colonia;
    private int municipio;
    private BeanUsuario idUsuario;

    public BeanEmpleados() {
    }

    public BeanEmpleados(int idEmpleado, String nombreEmpleados, String aPaterno, String aMaterno, String calle, String colonia, int municipio, BeanUsuario idUsuario) {
        this.idEmpleado = idEmpleado;
        this.nombreEmpleados = nombreEmpleados;
        this.aPaterno = aPaterno;
        this.aMaterno = aMaterno;
        this.calle = calle;
        this.colonia = colonia;
        this.municipio = municipio;
        this.idUsuario = idUsuario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getNombreEmpleados() {
        return nombreEmpleados;
    }

    public void setNombreEmpleados(String nombreEmpleados) {
        this.nombreEmpleados = nombreEmpleados;
    }

    public String getaPaterno() {
        return aPaterno;
    }

    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    public String getaMaterno() {
        return aMaterno;
    }

    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public int getMunicipio() {
        return municipio;
    }

    public void setMunicipio(int municipio) {
        this.municipio = municipio;
    }

    public BeanUsuario getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(BeanUsuario idUsuario) {
        this.idUsuario = idUsuario;
    }
}
