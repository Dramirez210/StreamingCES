/**
    Document   : Conexion
    Created on : 02/05/2022, 12:44:00 PM
    Author     : Dramirez
 */
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/bdstreamingservice");
        dataSource.setUsername("adminramirez");
        dataSource.setPassword("uacm123");
        return dataSource;
    }
}
