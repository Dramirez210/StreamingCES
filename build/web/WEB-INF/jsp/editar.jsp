<%-- 
    Document   : editar
    Created on : 2/05/2022, 01:18:17 PM
    Author     : Dramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NETFLIX - Modificaciones</title>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="css/style2.css">
        <style type="text/css">
            body{
                background: #2E2E2E;
            }
            h2, h3{
                font-weight: 700;
            }
            
        </style>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <div class="thumbnail">
                    <center><h2><i>Captura los datos correspondientes:</i></h2></center>
                    <div class="row">
                        <div class="col-sm-1">
                            
                        </div>
                        <div class="col-sm-6">
                            <br><br>
                            <img src="img/450_1000.jpg" alt="imagen" style="border-radius: 10%">
                            <br><br><br><br>
                            <img src="img/dispositivos.jpg" alt="imagen" style="border-radius: 10%">
                        </div>
                        <div class="col-sm-4">
                            <form method="POST">
                                <h3><i>Actualiza los datos</i></h3>
                                <div class="form-group">
                                    <h3><i>Nombre:</i></h3>
                                    <input type="text" name="nombre" class="form-control" placeholder="name" value="${lista[0].nombre}" required/>
                                    <h3><i>Apellido paterno:</i></h3>
                                    <input type="text" name="apellidoPaterno" class="form-control" placeholder="Apellido parterno" value="${lista[0].apellidoPaterno}" required />
                                    <h3><i>Apellido materno:</i></h3>
                                    <input type="text" name="apellidoMaterno" class="form-control" placeholder="Apellido materno" required value="${lista[0].apellidoMaterno}"/> 
                                    <h3><i>Servicio:</i></h3>
                                    <input type="text" name="servicio" class="form-control" placeholder="Servicio" required value="${lista[0].servicio}"/> 
                                    <h3><i>Fecha nacimiento:</i></h3>
                                    <input type="text" name="fechaNacimiento" class="form-control" placeholder="Fecha" value="${lista[0].fechaNacimiento}" required />
                                    <label for="controlPlan"><h3>Plan:</h3></label>
                                    <select class="form-control" id="controlPlan" name="plan" value="${lista[0].plan}">
                                        <option value="Basico">Basico</option>
                                        <option value="Estandar">Estandar</option>
                                        <option value="Premium">Premium</option>
                                    </select>
                                    <label for="controlEstatus"><h3>Estatus:</h3></label>
                                    <select class="form-control" id="controlEstatus" name="estatus" value="${lista[0].estatus}">
                                        <option value="Activo">Activo</option>
                                        <option value="Inactivo">Inactivo</option>
                                    </select>
                                    <br>
                                    <input type="submit" class="btn btn-primary btn-block" value="Guardar"/>
                                    <br>
                                    <input type="reset" class="btn btn-danger btn-block" value="Limpiar datos"/>
                                </div>
                                <div class="col-sm-1">
                            
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
