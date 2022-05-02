<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Netflix</title>
        <!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
        <!--Iconos de bootstrap 5-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <!---Mis estilos--->
        <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>
        <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
            <section class="seccion-nav"> 
                <div class="container-fluid">
                    <div class="navbar-header">                            
                        <a class="navbar-brand" href="#">Streaming service</a>
                    </div>
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#">NETFLIX</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="acceso.htm"><i class="bi bi-box-arrow-in-right"></i> Login</a></li>
                            </ul>
                        </div>
                </div>
            </section>
        </nav>
        <section class="perfil">
            <div class="jumbotron">
                <div class="contenedor1">
                    <center>
                        <i><h2>Seleccione el perfil</h2></i>
                        <hr>
                        <br>
                        <br>
                        <div class="users">
                            <img src="img/user.jpg" alt="perfil">
                            <a href="#">User 1</a>
                        </div>
                    </center>
                </div>
            </div>
            <hr>
        </section>
        <script src="https://kit.fontawesome.com/bf68d80425.js" crossorigin="anonymous"></script>
    </body>
</html>
