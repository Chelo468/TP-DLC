<%-- 
    Document   : archivo
    Created on : 07/05/2017, 15:19:45
    Author     : Benjamin Franklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Archivo</title>
        <script src="js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
        <nav id="navbar-example" class="navbar navbar-default navbar-static">
            <div class="container-fluid">
                <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index">Busqueda</a></li>
                        <li><a href="indexador">Indexador</a></li>
                        <li class="active"><a href="archivo">Archivo</a></li>
                    </ul>                        
                </div>
            </div>
        </nav>
        <c:import url="documentos/${doc}" />
    </body>
</html>
