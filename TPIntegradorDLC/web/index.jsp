<%-- 
    Document   : index
    Created on : Mar 20, 2013, 3:37:38 PM
    Author     : scarafia
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda</title>
        <script src="js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body>
    <nav id="navbar-example" class="navbar navbar-default navbar-static">
        <div class="container-fluid">
            <div class="collapse navbar-collapse bs-example-js-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index">Busqueda</a></li>
                    <li><a href="indexador">Indexador</a></li>
                    <li><a href="archivo">Archivo</a></li>
                </ul>                        
            </div>
        </div>
    </nav>
    <div id="header">
        <jsp:include page="header.jsp"/>
    </div>
    <div class="container">
        
        <div class="row">

            <form method="POST" action="index" class="form-inline">
                <div class="form-group col-xs-8">
                    <input type="text" name="cadena" class="form-control" ></div>
                <input type="submit" value="Buscar" class="btn btn-default col-xs-4">
            </form>
        </div> 
        <br><br>
        <div class="row">
            <table id="tbresultatos" class="table table-striped table-bordered" cellspacing="0" width="90%">
                <thead id="thresultatos" > 
                    <tr>
                        <th>Documento</th>
                        <th>Valor</th>
                </thead>
                <tbody>
                    <c:forEach items="${map}" var="entry">
                        <tr>
                            <td><a href="archivo?doc=${entry.value}">${entry.value}</a></td>
                            <td>${entry.key}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#tbresultatos').DataTable();
            });
        </script>
        
        
        <script src="js/dataTables.bootstrap.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
    </body>
</html>
