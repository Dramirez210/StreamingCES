
package Controller;

import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class Controlador {
    ModelAndView mav = new ModelAndView();

    @RequestMapping("index.htm")
    public ModelAndView mostrarIndex(){
        return mav;
    }
}
