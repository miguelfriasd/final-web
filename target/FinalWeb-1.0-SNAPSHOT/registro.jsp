<%-- 
    Document   : registro
    Created on : 1 may. 2023, 1:49:06
    Author     : mig_2
--%>

<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
    if (usuario != null) {
        response.sendRedirect("index.jsp");
    }
%> 

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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://unpkg.com/scrollreveal"></script>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>
        
        <!-- Header-->
        <header class="bg-danger  py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <img src="assets/img/NuevoUsuario.png" alt="">
                </div>
            </div>
        </header>
        <!-- Section-->
        <div class="form-login text-center">
            <form  action="registro-usuario" method="post">
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <input type="email" id="form2Example1" class="form-control" name="correo" maxlength="50" minlength="6" pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"/>
                  <label class="form-label" for="form2Example1">Correo Eletrónico</label>
                </div>
              
                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" id="form2Example2" class="form-control" name="contra" maxlength="20" minlength="4"/>
                  <label class="form-label" for="form2Example2">Contraseña</label>
                </div>
              
                <!-- Submit button -->
                <button type="submit" class="btn btn-black btn-block mb-4">Regisrarse </button>
              
            </form>
        </div>

        <!-- Footer-->
        <%@include file="/includes/footer.jsp"%>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/index.js"></script>
    </body>
</html>
