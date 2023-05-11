<%@page import="com.tierramedia.modelo.Administrador"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">
                    <img src="assets/img/iconoTM.png" alt="Logo" width="150x" height="40" class="d-inline-block align-text-top">
                </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
                            <% if (usuario == null) {   
                            %>
				<li class="nav-item"><a class="nav-link" href="tienda.jsp">Tienda</a></li>
				<li class="nav-item"><a class="nav-link" href="carrito.jsp">Carrito <span class="badge bg-danger">${carrito.size()}</span> </a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Iniciar Sesión</a></li>
                            <%
                                }else{
                                    if (usuario instanceof Administrador) {
                            %>
                                    <li class="nav-item"><a class="nav-link" href="tienda.jsp">Agregar Productos</a></li>
                                    <li class="nav-item"><a class="nav-link" href="ordenesAdmin.jsp">Ordenes</a></li>
                                    <li clnombreass="nav-item"><a class="nav-link" href="usuario-logout">Cerrar Sesión</a></li>
                            <%                
                                    }else{
                            %>  
                                    <li class="nav-item"><a class="nav-link" href="tienda.jsp">Tienda</a></li>
                                    <li class="nav-item"><a class="nav-link" href="carrito.jsp">Carrito <span class="badge bg-danger">${carrito.size()}</span> </a></li>
                                    <li class="nav-item"><a class="nav-link" href="ordenes.jsp">Ordenes</a></li>
                                    <li clnombreass="nav-item"><a class="nav-link" href="usuario-logout">Cerrar Sesión</a></li>
                            <%        
                                    }
                                }
                            %>            
			</ul>
		</div>
	</div>
</nav>