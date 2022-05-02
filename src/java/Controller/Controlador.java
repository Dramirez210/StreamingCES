
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
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    int id;

    @RequestMapping("index.htm")
    public ModelAndView mostrarIndex(){
        return mav;
    }
    
    @RequestMapping("acceso.htm")
    public ModelAndView Listar(){
        String sql = "SELECT * FROM tsuscriptores";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("acceso");
        return mav;
    }
    
    
    
}
