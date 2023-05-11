<%-- 
    Document   : ordenes
    Created on : 3 may. 2023, 8:14:00
    Author     : mig_2
--%>

<%@page import="com.tierramedia.modelo.Producto"%>
<%@page import="com.tierramedia.controlador.ControladorProducto"%>
<%@page import="com.tierramedia.modelo.Orden"%>
<%@page import="java.util.List"%>
<%@page import="com.tierramedia.modelo.Usuario"%>
<%@page import="com.tierramedia.controlador.ControladorOrden"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tierramedia.modelo.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
	List<Orden> ordenes = null;
	if (usuario != null && usuario instanceof Administrador) {
	    ControladorOrden controladorOrden  = new ControladorOrden();
            ordenes = controladorOrden.getOrdenes();
	}else{
            response.sendRedirect("tienda.jsp");
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
	<div class="container">
		<div class="card-header my-3">Todas las ordenes</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Fecha</th>
					<th scope="col">Articulo</th>
					<th scope="col">Cantidad</th>
					<th scope="col">Precio</th>
                                        <th scope="col">Correo Usuario</th>
					<th scope="col">Cancelar</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			if(ordenes != null){
                            ControladorProducto controladorProducto = new ControladorProducto();
				for(Orden o : ordenes){
                                    System.out.println(o.toString());
                                    Producto p = controladorProducto.getProducto(o.getIdProducto().intValue());
                                    
                                %>
					<tr>
						<td><%=o.getFecha()%></td>
						<td><%=p.getNombre()%></td>
						<td><%=o.getCantidad()%></td>
						<td><%=o.getCantidad() * p.getPrecio() %></td>
                                                <td><%=o.getCorreoUsuario()%></td>
						<td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%=o.getId()%>">Cancelar Orden</a></td>
					</tr>
				<%}
			}
			%>
			
			</tbody>
		</table>
	</div>
    </body>
</html>
