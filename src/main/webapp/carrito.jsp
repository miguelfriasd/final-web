<%-- 
    Document   : carrito
    Created on : 2 may. 2023, 15:05:31
    Author     : mig_2
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tierramedia.modelo.Producto"%>
<%@page import="com.tierramedia.modelo.Articulo"%>
<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page import="com.tierramedia.controlador.ControladorProducto"%>
<%@page import="com.tierramedia.controlador.ControladorProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ControladorProducto controladorProducto = new ControladorProducto();
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
    ArrayList<Articulo> carrito = (ArrayList<Articulo>) session.getAttribute("carrito");
    List<Producto> productosCarrito = null;
    if (carrito!=null) {
        double total = controladorProducto.getPrecioCarrito(carrito);
        productosCarrito = controladorProducto.getProductosCarrito(carrito);
        request.getSession().setAttribute("total", total);
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

	<div class="container my-3">
		<div class="d-flex py-3"><h3>Precio total: $ ${total} </h3> <a class="mx-3 btn btn-primary" href="carrito-check-out">Comprar</a></div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Nombre</th>
					<th scope="col">Precio</th>
					<th scope="col">Comprar ahora</th>
					<th scope="col">Cancelar</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (carrito != null) {
                                    for (Producto p : productosCarrito) {
                                        Articulo a = carrito.get(carrito.indexOf(new Articulo(p.getId().intValue(), 0)));
				%>
				<tr>
					<td><%=p.getNombre()%></td>
					<td><%= p.getPrecio()%></td>
					<td>
						<form action="order-now" method="post" class="form-inline">
						<input type="hidden" name="id" value="<%= p.getId()%>" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href="carrito-incdec?accion=inc&id=<%=p.getId()%>"><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="<%=a.getCantidad()%>" readonly> 
								<a class="btn btn-sm btn-decre" href="carrito-incdec?accion=dec&id=<%=p.getId()%>"><i class="fas fa-minus-square"></i></a>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">Comprar</button>
						</form>
					</td>
					<td><a href="carrito-remover?id=<%=p.getId() %>" class="btn btn-sm btn-danger">Remover</a></td>
				</tr>

				<%
				}}%>
			</tbody>
		</table>
	</div>
    </body>
</html>
