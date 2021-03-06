/**
    Document   : Suscriptor
    Created on : 02/05/2022, 01:45:00 PM
    Author     : Dramirez
 */
package Entidad;

import java.sql.Date;

public class Suscriptor {
    int id;
    String nombre;
    String apellidoPaterno;
    String apellidoMaterno;
    String servicio;
    Date fechaNacimiento;
    String plan;
    String estatus;

    public Suscriptor() {
    }

    public Suscriptor(int id, String nombre, String apellidoPaterno, String apellidoMaterno, String servicio, Date fechaNacimiento, String plan, String estatus) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.servicio = servicio;
        this.fechaNacimiento = fechaNacimiento;
        this.plan = plan;
        this.estatus = estatus;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
}
