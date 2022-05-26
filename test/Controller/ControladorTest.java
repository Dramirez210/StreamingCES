/**
    Document   : ControladorTest
    Created on : 26/05/2022, 12:46:00 PM
    Author     : Dramirez
 */
package Controller;

import Entidad.Suscriptor;
import javax.servlet.http.HttpServletRequest;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dramirez
 */
public class ControladorTest {
    
    public ControladorTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of mostrarIndex method, of class Controlador.
     */
    @Test
    public void testMostrarIndex() {
        System.out.println("mostrarIndex");
        Controlador instance = new Controlador();
        ModelAndView result = instance.mostrarIndex();
        assertNotNull(result);
    }

    /**
     * Test of Listar method, of class Controlador.
     */
    @Test
    public void testListar() {
        System.out.println("Listar");
        Controlador instance = new Controlador();
        String expResult = "acceso";
        String result = instance.Listar().getViewName();
        assertEquals(expResult, result);
    }

    /**
     * Test of Agregar method, of class Controlador.
     */
    @Test
    public void testAgregar_0args() {
        System.out.println("Agregar");
        Controlador instance = new Controlador();
        String expResult = "agregar";
        String result = instance.Agregar().getViewName();
        assertEquals(expResult, result);
    }

    /**
     * Test of Agregar method, of class Controlador.
     */
    /*@Test
    public void testAgregar_Suscriptor() {
        System.out.println("Agregar");
        Suscriptor s = null;
        Controlador instance = new Controlador();
        ModelAndView expResult = null;
        ModelAndView result = instance.Agregar(s);
        assertEquals(expResult, result);
    }*/

    /**
     * Test of Editar method, of class Controlador.
     */
    /*@Test
    public void testEditar_HttpServletRequest() {
        System.out.println("Editar");
        HttpServletRequest request = null;
        Controlador instance = new Controlador();
        ModelAndView expResult = null;
        ModelAndView result = instance.Editar(request);
        assertEquals(expResult, result);
    }*/

    /**
     * Test of Editar method, of class Controlador.
     */
    /*@Test
    public void testEditar_Suscriptor() {
        System.out.println("Editar");
        Suscriptor s = null;
        Controlador instance = new Controlador();
        ModelAndView expResult = null;
        ModelAndView result = instance.Editar(s);
        assertEquals(expResult, result);
    }*/

    /**
     * Test of Borrar method, of class Controlador.
     */
    /*@Test
    public void testBorrar() {
        System.out.println("Borrar");
        HttpServletRequest request = null;
        Controlador instance = new Controlador();
        ModelAndView expResult = null;
        ModelAndView result = instance.Borrar(request);
        assertEquals(expResult, result);
    }*/
    
}
