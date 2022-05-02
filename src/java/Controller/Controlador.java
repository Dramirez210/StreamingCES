/**
    Document   : Controlador
    Created on : 02/05/2022, 01:15:00 PM
    Author     : Dramirez
 */
package Controller;

import Config.Conexion;
import Entidad.Suscriptor;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class Controlador {
    Conexion con = new Conexion();
    //Plantilla de datos para tratamiento
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.conectar());
    //Modelo y vista
    ModelAndView mav = new ModelAndView();
    List datos;
    int id;
    
    //Pagina principal
    @RequestMapping("index.htm")
    public ModelAndView mostrarIndex(){
        return mav;
    }
    
    //Consultar registros
    @RequestMapping("acceso.htm")
    public ModelAndView Listar(){
        String sql = "SELECT * FROM tsuscriptores";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("acceso");
        return mav;
    }
    
    //Para agregar mapeo
    @RequestMapping(value="agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Suscriptor());
        mav.setViewName("agregar");
        return mav;
    }
    
    //Agregar registro
    @RequestMapping(value="agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Suscriptor s){
        String sql = "INSERT INTO tsuscriptores(nombre, apellidoPaterno, apellidoMaterno,servicio,fechaNacimiento,plan,estatus,idPlanes) values(?,?,?,?,?,?,?,?)";
        int aux;
        if(s.getPlan() == "Basico"){
            aux = 1;
        }else if(s.getPlan() == "Estadar"){
            aux = 2;
        }else{
            aux = 3;
        }
        this.jdbcTemplate.update(sql, s.getNombre(), s.getApellidoPaterno(), s.getApellidoMaterno(), s.getServicio(), s.getFechaNacimiento(), s.getPlan(), s.getEstatus(), aux);
        return new ModelAndView("redirect:/acceso.htm");
    }
    
    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar (HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT nombre, apellidoPaterno, apellidoMaterno, servicio, fechaNacimiento, plan, estatus FROM tsuscriptores WHERE id="+id;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editar");
        return mav;
    }
    
    //editar registro
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Suscriptor s){
        String sql = "UPDATE tsuscriptores set nombre=?, apellidoPaterno=?, apellidoMaterno=?, servicio=?, fechaNacimiento=?, plan=?, estatus=? where id="+id;
        this.jdbcTemplate.update(sql, s.getNombre(), s.getApellidoPaterno(), s.getApellidoMaterno(), s.getServicio(), s.getFechaNacimiento(), s.getPlan(), s.getEstatus());
        return new ModelAndView("redirect:/acceso.htm");
    }
    
    //Borrar registro
    @RequestMapping("borrar.htm")
    public ModelAndView Borrar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "DELETE from tsuscriptores WHERE id = "+id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/acceso.htm");
    }
}
