<%-- 
    Document   : acceso
    Created on : 2/05/2022, 01:05:31 PM
    Author     : Dramirez
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suscriptores</title>
        <!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
        <!--Iconos de bootstrap 5-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <center><h3>Sistema de Contol NETFLIX</h3></center>
                <hr>
                <center><img src="img/net2.jpeg" alt="imagen" class="img img-responsive" style="border-radius: 5%"></center>
            </div>
        </div>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-primary text-white">
                    <a href="agregar.htm" class="btn btn-danger">Agregar nuevo registro</a>
                </div>
                <div class="card card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th><center>ID</center></th>
                                <th><center>Nombre</center></th>
                                <th><center>Apellido Paterno</center></th>
                                <th><center>Apellido Materno</center></th>
                                <th><center>Servicio</center></th>
                                <th><center>Fecha de nacimiento</center></th>
                                <th><center>Plan</center></th>
                                <th><center>Estatus</center></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td aling="center"> ${dato.id}</td>
                                    <td aling="center"> ${dato.nombre}</td>
                                    <td aling="center"> ${dato.apellidoPaterno}</td>
                                    <td aling="center"> ${dato.apellidoMaterno}</td>
                                    <td aling="center"> ${dato.servicio}</td>
                                    <td aling="center"> ${dato.fechaNacimiento}</td>
                                    <td aling="center"> ${dato.plan}</td>
                                    <td aling="center"> ${dato.estatus}</td>
                                    <td align="center">
                                        <a href="editar.htm?id=${dato.id}" class="btn btn-warning">Editar</a>
                                        <a href="borrar.htm?id=${dato.id}" class="btn btn-danger">Borrar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
