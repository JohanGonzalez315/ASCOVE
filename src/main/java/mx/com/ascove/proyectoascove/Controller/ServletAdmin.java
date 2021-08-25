package mx.com.ascove.proyectoascove.Controller;

import com.google.gson.Gson;
import mx.com.ascove.proyectoascove.Model.BeanEmpleados;
import mx.com.ascove.proyectoascove.Model.DaoEmpleados;
import mx.com.ascove.proyectoascove.Model.Usuario.BeanUsuario;
import mx.com.ascove.proyectoascove.Model.Usuario.DaoUsuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletAdmin", urlPatterns = {"/ServletAdmin","/createUser", "/getUserById", "/findById", "/updateUser", "/deleteUser",  "/loginUser"})

public class ServletAdmin extends HttpServlet {

    Logger CONSOLE = LoggerFactory.getLogger(ServletAdmin.class);
    BeanEmpleados beanEmpleados = new BeanEmpleados();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             //List<BeanEmpleados> listAdmin = new DaoEmpleados().findAll();

        request.getRequestDispatcher("/views/admin/Admin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map map = new HashMap();
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        /*BeanUsers beanUsers = new BeanUsers();
        BeanRole beanRole = new BeanRole();*/
        DaoEmpleados daoEmpleados = new DaoEmpleados();
        // DaoUsers daoUsers = new DaoUsers();

        switch (action) {
            case "create":

                int idRol = request.getParameter("idRol") != null ? Integer.parseInt(request.getParameter("idRol")) : 0;
                String nombre = request.getParameter("nombre") != null ? request.getParameter("nombre") : "";
                String lastname = request.getParameter("aPaterno") != null ? request.getParameter("aPaterno") : "";
                String surname = request.getParameter("aMaterno") != null ? request.getParameter("aMaterno") : "";
                String calle = request.getParameter("calle") != null ? request.getParameter("calle") : "";
                String colonia = request.getParameter("colonia") != null ? request.getParameter("colonia") : "";
                int municipio = request.getParameter("municipio") != null ? Integer.parseInt(request.getParameter("municipio")) : 0;

                BeanEmpleados beanEmpleados = new BeanEmpleados();

                beanEmpleados.setIdEmpleado(idRol);
                beanEmpleados.setNombreEmpleados(nombre);
                beanEmpleados.setaPaterno(lastname);
                beanEmpleados.setaMaterno(surname);
                beanEmpleados.setCalle(calle);
                beanEmpleados.setColonia(colonia);
                beanEmpleados.setMunicipio(municipio);

               /* beanUsers.setEmail(email);
                beanUsers.setPassword(contraseña);
                beanRole.setIdRol(rol);
                beanUsers.setNumberrol(beanRole);*/
                if (new DaoEmpleados().create(beanEmpleados)) {
                    request.setAttribute("message", "Usuario registrado correctamente");

                } else {
                    request.setAttribute("message", "Usuario no registrado");
                }
                //daoUsers.create(beanUsers);
                request.getRequestDispatcher("views/admin/Admin.jsp").forward(request, response);
                break;
            case "getUserById":
                // do something

               int id= Integer.parseInt(request.getParameter("idEmpleado"));
               request.setAttribute("emp", new DaoEmpleados().finById(id));
                request.getRequestDispatcher("/views/admin/update.jsp").forward(request, response);
                break;
            case "findById":
                // do something
                try {
                    Gson gson = new Gson();
                    int id5= Integer.parseInt(request.getParameter("idEmpleado"));

                    map.put("emp", new DaoEmpleados().finById(id5));

                    response.setStatus(200);
                }catch(Exception e){
                    response.setStatus(400);
                    CONSOLE.error("Usuario no encontrado.");
                }
                write(response, map);
                break;
            case "update":
                int idRol1 = request.getParameter("idRol") != null ? Integer.parseInt(request.getParameter("idRol")) : 1;
                String nombre1 = request.getParameter("nombre") != null ? request.getParameter("nombre") : "";
                String lastname1 = request.getParameter("aPaterno");
                String surname1 = request.getParameter("aMaterno") ;
                String calle1 = request.getParameter("calle");
                String colonia1 = request.getParameter("colonia");
                int municipio1 = request.getParameter("municipio") != null ? Integer.parseInt(request.getParameter("municipio")) : 0;
                /*BeanUsuario beanUsuario1 = new BeanUsuario(0, "","",idRol1);
                BeanEmpleados beanEmpl1= new BeanEmpleados( 0, nombre1, lastname1,surname1, calle1, colonia1, municipio1, beanUsuario1);
                */
                BeanEmpleados beanEmpleados1 = new BeanEmpleados();

                beanEmpleados1.setIdEmpleado(idRol1);
                beanEmpleados1.setNombreEmpleados(nombre1);
                beanEmpleados1.setaPaterno(lastname1);
                beanEmpleados1.setaMaterno(surname1);
                beanEmpleados1.setCalle(calle1);
                beanEmpleados1.setColonia(colonia1);
                beanEmpleados1.setMunicipio(municipio1);

                if (new DaoEmpleados().update(beanEmpleados1)) {
                    request.setAttribute("message", "Usuario modificado correctamente");
                } else {
                    request.setAttribute("message", "Usuario no modificado");
                }
                request.getRequestDispatcher("/views/admin/Admin.jsp").forward(request, response);
                break;

            case "delete":
                // do something
                long id2 = Long.parseLong(request.getParameter("idRol"));
                if(new DaoEmpleados().delete(id2)){
                    request.setAttribute("message", "Usuario eliminado correctamente");
                } else {
                    request.setAttribute("message", "Usuario no eliminado");
                }
                doGet(request, response);
                break;
            case "login":
               // System.out.println("Aquiiiii222");
                String user=request.getParameter("correo");
                String pass=request.getParameter("contra");
                BeanUsuario usuarios = new BeanUsuario();
                //System.out.println("Aquiiiii");
                try {
                   // System.out.println("Aquiiiii2233333");
                    usuarios=new DaoUsuario().login(user,pass);


                    HttpSession misession= request.getSession();
                    //pendiente
                    misession.setAttribute("tipo_user", usuarios.getIdRoles());
                    misession.setAttribute("name",usuarios.getCorreo());
                    misession.setAttribute("correo",usuarios.getcontra());

                    System.out.println("Datos de usuario: "+usuarios.getIdRoles());
                    //Valida que tipo de rol y redirecionamiento
                    switch (usuarios.getIdRoles()){
                        case 1:
                            System.out.println("Sientra");
                            request.setAttribute("listUsers", new DaoEmpleados().findAll());
                            request.getRequestDispatcher("/views/admin/Admin.jsp").forward(request, response);
                            break;
                        case 2:
                            //Aquí ponen la ruta a donde debe redireccionar
                            System.out.println("Sientra2");
                            break;
                        case 3:
                            //Aquí ponen la ruta a donde debe redireccionar
                            System.out.println("Sientra3");
                            break;
                        case 4:
                            //Aquí ponen la ruta a donde debe redireccionar
                            System.out.println("Sientra4");
                            break;
                        default:
                            //Este reenvía al index por default si es que no existe el usuario en la base de datos
                            request.getRequestDispatcher("/views/index.jsp").forward(request, response);
                            break;
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }

                break;
            default:
                // no supported
                break;

        }
    }
    private void write (HttpServletResponse response, Map < String, Object > map) throws IOException {
        response.setContentType("application/json");
        response.getWriter().write(new Gson().toJson(map));
    }
}