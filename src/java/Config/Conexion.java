
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
