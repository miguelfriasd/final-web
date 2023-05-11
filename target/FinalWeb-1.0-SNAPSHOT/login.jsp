<%-- 
    Document   : login
    Created on : 1 may. 2023, 6:18:43
    Author     : mig_2
--%>

<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
    if (usuario != null) {
        response.sendRedirect("tienda.jsp");
    }
%> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - Tierra Media </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/icon.png" />
        <!-- Bootstrap icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://unpkg.com/scrollreveal"></script>
    </head>
    <body>
        <!-- Navigation-->
<!--         <nav class="navbar navbar-expand-lg  fixed-top row justify-content-between"  id="mainNav" >
            
            <div class="container px-4 px-lg-5">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="#">
                    <img src="assets/img/iconoTM.png" alt="Logo" width="150x" height="40" class="d-inline-block align-text-top">
                    </a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto " >
                        <li class="nav-item"><a class="nav-link" href="index.html">Inicio</a></li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Buscar producto" aria-label="Search">
                        <button class="btn btn-dark" type="submit">Buscar</button>
                      </form>
                      <span>----</span>
                    <form class="d-flex">
                        <button class="btn btn-danger" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Carrito
                            <span class="badge bg-black text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                   
                  
                </div>
            </div>
        </nav> -->

	<%@include file="/includes/navbar.jsp"%>

        
        <!-- Header-->
        <header class="bg-danger  py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <img src="assets/img/TierraMedia.png" alt="">
                </div>
            </div>
        </header>
        <!-- Section-->
        <div class="form-login text-center">
            <form action="login-usuario" method="post">
                <!-- Email input -->
               <div class="form-outline mb-4">
                  <input type="email" id="form2Example1" class="form-control" name="correo"
                  <label class="form-label" for="form2Example1">Correo Electrónico</label>
                </div>                
              
                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" id="form2Example2" class="form-control" name="contra"/>
                  <label class="form-label" for="form2Example2">Contraseña</label>
                </div>
              
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4">Iniciar sesión </button>
              
                <!-- Register buttons -->
                <div class="text-center">
                  <p>No tiene cuenta? <a href="registro.jsp">Registrese</a></p>
                </div>
            </form>
        </div>

        <!-- Footer-->
        <footer class="py-5 bg-white ">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy;  Cerveza Tierra Media 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/index.js"></script>
    </body>
</html>
