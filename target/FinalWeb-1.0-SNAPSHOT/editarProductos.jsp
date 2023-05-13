<%-- 
    Document   : agregarProductos
    Created on : 12 may 2023, 14:19:12
    Author     : mig_2
--%>
<%@page import="com.tierramedia.modelo.Producto"%>
<%@page import="com.tierramedia.modelo.Administrador"%>
<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
    if (usuario == null || !(usuario instanceof Administrador)) {
        response.sendRedirect("index.jsp");
    }
    Producto producto = (Producto)request.getAttribute("producto");
    if (producto == null) {
        response.sendRedirect("index.jsp"); 
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tienda-Tierra Media </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/icon.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" /> 
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>
        <%

            
        %>
        <div class="form-login">
            <form action="editar-producto-final" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${producto.getId()}" />
                <div class="form-group mb-4">
                    <label for="nombre">Nombre del producto:</label>
                    <input require="" type="text" class="form-control" name="nombre" value="${producto.getNombre()}">
                </div>
                <div class="form-group mb-4">
                    <label for="precio">Precio:</label>
                    <input type="number" class="form-control" name="precio" value="${producto.getPrecio()}">
                </div>
                <div class="form-group mb-4">
                    <label for="imagen">Imagen:</label>
                    <input type="file" class="form-control-file" name="imagen">
                </div>
                <button type="submit" class="btn btn-primary">Editar producto</button>
            </form>
        </div>
    </body>
</html>
