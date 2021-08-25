package mx.com.ascove.proyectoascove.Model.Usuario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import mx.com.ascove.proyectoascove.Service.ConnectionMySQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DaoUsuario {
    Connection con;
    CallableStatement cstm;
    ResultSet rs;
    Logger logger = LoggerFactory.getLogger(DaoUsuario.class);

    public BeanUsuario login(String user, String pass) throws SQLException {
        BeanUsuario bean = new BeanUsuario();

        try {

            con = ConnectionMySQL.getConnection();
            //Definir procedimiento almacenado a llamar
            cstm = con.prepareCall("{call sp_login(?,?)}");
            cstm.setString(1, user);
            cstm.setString(2, pass);
            //Obtener los datos
            rs = cstm.executeQuery();

            while (rs.next()){
                bean.setIdUsuario(rs.getInt("idUsuario"));
                bean.setCorreo(rs.getString("Correo"));
                bean.setcontra(rs.getString("contra"));
                bean.setIdRoles(rs.getInt("Rol"));
            }
        } catch (SQLException e){
            logger.error("Ha ocurrido un error:" +e.getMessage());
            return new BeanUsuario();
        } finally {
            //Cerrar las conexione
            con.close();
            rs.close();
        }
        return bean;
    }

}