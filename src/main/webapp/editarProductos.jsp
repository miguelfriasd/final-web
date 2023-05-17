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
        <header class="bg-danger  py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <img src="assets/img/editarProducto.png" alt="">
                </div>
            </div>
        </header>
        <div class="form-login">
            <form action="editar-producto-final" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${producto.getId()}" />
                <div class="form-group mb-4">
                    <label for="nombre">Nombre del producto:</label>
                    <input require="" type="text" class="form-control" required="" maxlength="50" name="nombre" value="${producto.getNombre()}">
                </div>
                <div class="form-group mb-4">
                    <label for="precio">Precio:</label>
                    <input type="text" class="form-control" required="" maxlength="6" pattern="^(?!-)\d+(\.\d+)?$" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"name="precio" value="${producto.getPrecio()}">
                </div>
                <div class="form-group mb-4">
                    <label for="imagen">Imagen:</label>
                    <input type="file" required="" class="form-control-file" name="imagen">
                </div>
                <button type="submit" class="btn btn-black">Editar producto</button>
            </form>
        </div>
        <%@include file="/includes/footer.jsp"%>             
    </body>
</html>
