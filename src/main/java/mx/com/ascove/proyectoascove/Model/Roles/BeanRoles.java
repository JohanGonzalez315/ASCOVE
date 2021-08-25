package mx.com.ascove.proyectoascove.Model.Roles;

public class BeanRoles {
    private int idRol;
    private String descripcion;

    public BeanRoles() {
    }

    public BeanRoles(int idRol, String descripcion) {
        this.idRol = idRol;
        this.descripcion = descripcion;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
