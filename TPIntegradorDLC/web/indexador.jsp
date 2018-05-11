<%-- 
    Document   : indexador
    Created on : 29/04/2017, 19:20:05
    Author     : Benjamin Franklin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Indexador</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/tabla.css">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
        <nav id="navbar-example" class="navbar navbar-default navbar-static">
            <div class="container-fluid">
                <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index">Busqueda</a></li>
                        <li class="active"><a href="indexador">Indexador</a></li>
                        <li><a href="archivo">Archivo</a></li>
                    </ul>                        
                </div>
            </div>
        </nav>
        <div id="header">
            <jsp:include page="header.jsp"/>
        </div>
        <div class="container">
            <script type="text/javascript">
                var path = (window.URL || window.webkitURL).createObjectURL(file);
                console.log('path', path);
            </script>
            <div class="row">
                <form method="POST" action="success" class="form-inline">
                    <input type="submit" value="Indexar documentos" class="btn btn-default col-xs-4">
                </form>
            </div>
            <div class="row">
                <form method="POST" action="indexador" class="form-inline">
                    <div class="form-group col-xs-8">
                        <input type="text" name="url" class="form-control" value="C:\Users\Chelo\Documents\UTN\DocumentosTP\\docu.txt"></div> 
                        <%--<input type="file" name="file" id="ejemplo_archivo_1">--%>
                    <input type="submit" value="Indexar" class="btn btn-default col-xs-4">
                </form>
            </div>
        </div>
    </body>
</html>
