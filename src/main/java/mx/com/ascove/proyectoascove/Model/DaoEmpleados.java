package mx.com.ascove.proyectoascove.Model;

import mx.com.ascove.proyectoascove.Model.Usuario.BeanUsuario;
import mx.com.ascove.proyectoascove.Service.ConnectionMySQL;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;


public class DaoEmpleados {

    private Connection con;
    private CallableStatement cstm;
    private ResultSet rs;


    final private Logger CONSOLE = LoggerFactory.getLogger(DaoEmpleados.class);

    public List<BeanEmpleados> findAll() {
        List<BeanEmpleados> listUsers = new ArrayList<>();

        try {
            con = ConnectionMySQL.getConnection();
            cstm = con.prepareCall("{call findEmpls}");
            rs = cstm.executeQuery();

            while (rs.next()){
                BeanUsuario user =new BeanUsuario();
                 BeanEmpleados emp = new BeanEmpleados();

                emp.setIdEmpleado(rs.getInt("idEmpleados"));
                emp.setNombreEmpleados(rs.getString("Nombre"));
                emp.setaPaterno(rs.getString("ApellidoPaterno"));
                emp.setaPaterno(rs.getString("ApellidoMaterno"));
                emp.setCalle(rs.getString("Calle"));
                emp.setColonia(rs.getString("Colonia"));
                emp.setMunicipio(rs.getInt("Municipio"));
                user.setIdUsuario(rs.getInt("Usuario"));
                listUsers.add(emp);
            }
        }catch(SQLException e){
            CONSOLE.error("Ha ocurrido un error: " + e.getMessage());
        }finally{
            ConnectionMySQL.closeConnections(con, cstm);
        }
        return listUsers;
    }

    public BeanEmpleados finById(int idEmpleado){
        BeanEmpleados emp = null;
        try{
        con = ConnectionMySQL.getConnection();
        cstm = con.prepareCall("Select * from Empleados where idEmpleados = ? ");
        cstm.setInt(1, idEmpleado);
        rs = cstm.executeQuery();

        if(rs.next()){
            BeanUsuario user =new BeanUsuario();
              emp = new BeanEmpleados();

            emp.setIdEmpleado(rs.getInt("idEmpleados"));
            emp.setNombreEmpleados(rs.getString("Nombre"));
            emp.setaPaterno(rs.getString("ApellidoPaterno"));
            emp.setaPaterno(rs.getString("ApellidoMaterno"));
            emp.setCalle(rs.getString("Calle"));
            emp.setColonia(rs.getString("Colonia"));
            emp.setMunicipio(rs.getInt("Municipio"));
            user.setIdUsuario(rs.getInt("Usuario"));

        }
    }catch(SQLException e){
        CONSOLE.error("Ha ocurrido un error: " + e.getMessage());
    }finally{
        ConnectionMySQL.closeConnections(con, cstm);
    }

        return emp;
    }

    public boolean create (BeanEmpleados admin) {
        boolean flag = false;
        try {
            con = ConnectionMySQL.getConnection();
            cstm = con.prepareCall("{call registerEmpls(?,?,?,?,?,?,?)}");

            cstm.setString(1, admin.getNombreEmpleados());
            cstm.setString(2, admin.getaPaterno());
            cstm.setString(3, admin.getaMaterno());
            cstm.setString(4, admin.getCalle());
            cstm.setString(5, admin.getColonia());
            cstm.setInt(6, admin.getMunicipio());
            cstm.setInt(7, admin.getIdEmpleado());
            cstm.execute();

            flag = true;

        } catch (SQLException e) {
            CONSOLE.error("Ha ocurrido un error: " + e.getMessage());
        } finally {
            ConnectionMySQL.closeConnections(con, cstm);
        }
        return flag;
    }

        public boolean update(BeanEmpleados emp){
            boolean flag = false;
            try{
                con = ConnectionMySQL.getConnection();
                cstm = con.prepareCall("{call updateEmpls(?,?,?,?,?,?,?)}");

                cstm.setString(1, emp.getNombreEmpleados());
                cstm.setString(2, emp.getaPaterno());
                cstm.setString(3, emp.getaMaterno());
                cstm.setString(4, emp.getCalle());
                cstm.setString(5, emp.getColonia());
                cstm.setInt(6, emp.getMunicipio());
                cstm.setInt(7, emp.getIdEmpleado());
                cstm.execute();

                flag = cstm.execute();
            }catch(SQLException e){
                CONSOLE.error("Ha ocurrido un error: " + e.getMessage());
            }finally{
                ConnectionMySQL.closeConnections(con, cstm);
            }
            return flag;
        }

    public boolean delete(long idUser){
        boolean flag = false;
        try{
            con = ConnectionMySQL.getConnection();
            cstm = con.prepareCall("{call deleteEmpls(?)}");
            cstm.setLong(1, idUser);

            flag = cstm.execute();
        }catch(SQLException e){
            CONSOLE.error("Ha ocurrido un error: " + e.getMessage());
        }finally{
            ConnectionMySQL.closeConnections(con, cstm);
        }
        return flag;
    }



//Sirve para probar el procedimiento

 /*/
    public static void main(String[] args) {
        BeanEmpleados beanUser = new BeanEmpleados();
        //BeanPerson beanPerson = new BeanPerson();
       // BeanRole beanRole = new BeanRole();
        DaoEmpleados daoUser = new DaoEmpleados();
        System.out.println("=================================");
        System.out.println("=====<---  LISTA--->==========");
        // Listando usuarios
        List<BeanEmpleados> listUsers = new ArrayList<>();
        listUsers = daoUser.findAll();

        for (int i = 0; i < listUsers.size(); i++){
            System.out.println(listUsers.get(i).getNombreEmpleados());
        }

        //
        // Registrando usuarios
        System.out.println("=================================");
        System.out.println("=====<---  Registro--->==========");

        boolean registed = false;

        beanUser.setIdEmpleado(1);
        beanUser.setNombreEmpleados("Lucia");
        beanUser.setaMaterno("Martinez");
        beanUser.setaPaterno("zamudio");
        beanUser.setMunicipio(10);
        beanUser.setCalle("aldama");
        beanUser.setColonia("san lucas");

        registed = daoUser.create(beanUser);

        System.out.println("Se ha registrado correctamente");
        //

    // Eliminar de manera "baja lógica"
        //
        System.out.println("=================================");
        System.out.println("=====<---  Eliminando--->==========");
        boolean flag = false;
        flag = daoUser.delete(10);
        System.out.println("Se Elimino correctamente");

    }
    / */


 }
