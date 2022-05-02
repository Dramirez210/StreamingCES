<%-- 
    Document   : agregar
    Created on : 2/05/2022, 01:16:06 PM
    Author     : Dramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NETFLIX Formulario</title>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <style type="text/css">
            body{
                background-color: #15161D;
            }
            .jumbotron h1{
                font-weight: 700;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="contenedor-registro">
            <div class="jumbotron">
                <div class="thumbnail">
                    <center><h1><i>Formulario Alta de suscriptor</i></h1></center>
                    <div class="row">
                        <div class="col-sm-1">    
                        </div>
                        <div class="col-sm-6">
                            <br>
                            <img src="img/net2.jpeg" alt="imagen 1" class="img img-responsive" style="border-radius: 10%">
                            <br>
                            <br>
                            <img src="img/net.jpeg" alt="imagen 2" class="img img-responsive" style="border-radius: 10%">
                        </div>
                        <div class="col-sm-5">
                            <form method="POST">
                                <div class="form-group">
                                    <h3><i>Nombre:</i></h3>
                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre" required />
                                    <h3><i>Apellido Paterno:</i></h3>
                                    <input type="text" name="apellidoPaterno" class="form-control" placeholder="Paterno" required />
                                    <h3><i>Apellido Materno:</i></h3>
                                    <input type="text" name="apellidoMaterno" class="form-control" placeholder="Materno" required />
                                    <label for="controlServicio"><h3>Servicio:</h3></label>
                                    <select class="form-control" id="controlServicio" name="servicio">
                                        <option value="Streaming">Streaming</option>
                                    </select>
                                    <h3><i>Fecha de nacimiento:</i></h3>
                                    <input type="date" name="fechaNacimiento" class="form-control"  required />
                                    <label for="controlPlan"><h3>Plan:</h3></label>
                                    <select class="form-control" id="controlPlan" name="plan">
                                        <option value="Basico">Basico</option>
                                        <option value="Estandar">Estandar</option>
                                        <option value="Premium">Premium</option>
                                    </select>
                                    <label for="controlEstatus"><h3>Estatus:</h3></label>
                                    <select class="form-control" id="controlEstatus" name="estatus">
                                        <option value="Activo">Activo</option>
                                        <option value="Inactivo">Inactivo</option>
                                    </select>
                                    <br>
                                    <input type="submit" class="btn btn-primary btn-block" value="Registrar datos">
                                    <br>
                                    <input type="reset" class="btn btn-danger btn-block" value="Limpiar datos">
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
                </div>
                </div>
        </div>
    </body>
</html>
