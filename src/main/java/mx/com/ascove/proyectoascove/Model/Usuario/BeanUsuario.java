package mx.com.ascove.proyectoascove.Model.Usuario;

import mx.com.ascove.proyectoascove.Model.Roles.BeanRoles;

public class BeanUsuario {
    private int idUsuario;
    private String correo;
    private String contra;
    private int idRoles;


    public BeanUsuario(int idUsuario, String correo, String contra, int idRoles) {

    }

    public BeanUsuario() {
        this.idUsuario = idUsuario;
        this.correo = correo;
        this.contra = contra;
        this.idRoles = idRoles;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getcontra() {
        return contra;
    }

    public void setcontra(String contra) {
        this.contra = contra;
    }

    public int getIdRoles() {
        return idRoles;
    }

    public void setIdRoles(int idRoles) {
        this.idRoles = idRoles;
    }
}
