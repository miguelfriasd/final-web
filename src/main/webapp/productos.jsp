<%-- 
    Document   : carrito
    Created on : 1 may. 2023, 7:00:36
    Author     : mig_2
--%>

<%@page import="com.tierramedia.modelo.Producto"%>
<%@page import="com.tierramedia.modelo.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page import="com.tierramedia.controlador.ControladorProducto"%>
<%
    ControladorProducto controladorProducto = new ControladorProducto();
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
    ArrayList<Articulo> carrito = (ArrayList<Articulo>) session.getAttribute("carrito");    
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>

        <!-- Header-->
        <header class="bg-danger  py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <img src="assets/img/TierraMedia.png" alt="">
                </div>
            </div>
        </header>
        
        <section>
            <a class="btn btn-primary mb-3 mt-3 ms-3" href="agregarProductos.jsp" role="button">Agregar Productos</a>
        </section>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5 ">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <%= controladorProducto.getProductosAdmin()%>    
                </div>                   
        </section>
        <!-- Footer-->
        <%@include file="/includes/footer.jsp"%>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/index.js"></script>
    </body>
</html>