/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.controlador;

import com.tierramedia.modelo.Articulo;
import com.tierramedia.modelo.Producto;
import com.tierramedia.unitofwork.UnitOfWork;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class ControladorProducto {
    
    public String getProductos(){
        String htmlcode = "";
        for (Producto producto : UnitOfWork.getInstance().getProductosRepository().getAllProductos()) {
            htmlcode+=  "                    <div class=\"col mb-5 cheve\">\n" +
                        "                        <div class=\"card h-100\">\n" +
                        "                            <!-- Product image-->\n" +
                        "                            <img class=\"card-img-top\" src=assets/img/" + producto.getImg() + " alt=\"...\" />\n" +
                        "                            <!-- Product details-->\n" +
                        "                            <div class=\"card-body p-4\">\n" +
                        "                                <div class=\"text-center\">\n" +
                        "                                    <!-- Product name-->\n" +
                        "                                    <h5 class=\"fw-bolder\">" + producto.getNombre() + "</h5>\n" +
                        "                                    <!-- Product price-->\n" +
                        "                                    " + producto.getPrecio() + "\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                            <!-- Product actions-->\n" +
                        "                            <div class=\"card-footer p-4 pt-0 border-top-0 btnTienda\">\n" +
                        "                                <div class=\"text-center\"><a class=\"btn btn-outline-light mt-auto\" href=\"agregar-carrito?id="+producto.getId()+"\">Comprar</a></div>\n" +
                        "                            </div>\n" +
                        "                        </div>\n" +
                        "                    </div>";
        }
        return htmlcode;
    }
    
    public String getProductosAdmin(){
        String htmlcode = "";
        for (Producto producto : UnitOfWork.getInstance().getProductosRepository().getAllProductos()) {
            htmlcode+=  "                    <div class=\"col mb-5 cheve\">\n" +
                        "                        <div class=\"card h-100\">\n" +
                        "                            <!-- Product image-->\n" +
                        "                            <img class=\"card-img-top\" src=assets/img/" + producto.getImg() + " alt=\"...\" />\n" +
                        "                            <!-- Product details-->\n" +
                        "                            <div class=\"card-body p-4\">\n" +
                        "                                <div class=\"text-center\">\n" +
                        "                                    <!-- Product name-->\n" +
                        "                                    <h5 class=\"fw-bolder\">" + producto.getNombre() + "</h5>\n" +
                        "                                    <!-- Product price-->\n" +
                        "                                    " + producto.getPrecio() + "\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                            <!-- Product actions-->\n" +
                        "                            <div class=\"card-footer p-4 pt-0 border-top-0 btnTienda\">\n" +
                        "                                <div class=\"text-center\"><a class=\"btn btn-outline-light mt-auto\" href=\"editar-producto?id="+producto.getId()+"\">Editar</a><a class=\"btn btn-outline-light mt-auto\" href=\"eliminar-producto?id="+producto.getId()+"\">Eliminar</a></div>\n" +
                        "                            </div>\n" +
                        "                        </div>\n" +
                        "                    </div>";
        }
        return htmlcode;
    }    
    
    public Producto getProducto(int id){
        return UnitOfWork.getInstance().getProductosRepository().getProducto(id);
    }
    
    public double getPrecioCarrito(List<Articulo> carrito){
        double sum = 0;
        try {
            if (carrito.size() > 0) {
                for (Articulo articulo : carrito) {
                    Producto producto = UnitOfWork.getInstance().getProductosRepository().getProducto(articulo.getIdProducto());
                    sum += producto.getPrecio() * articulo.getCantidad();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }
    
    
    public List<Producto> getProductosCarrito(List<Articulo> carrito){
        List<Producto> productosCarrito = new ArrayList<>();
        try {
            if (carrito.size() > 0) {
                for (Articulo articulo : carrito) {
                    Producto producto = UnitOfWork.getInstance().getProductosRepository().getProducto(articulo.getIdProducto());
                    productosCarrito.add(producto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return productosCarrito;
    }
    
    public void agregarProducto(Producto producto){
        UnitOfWork.getInstance().getProductosRepository().agregar(producto);
    }
    
    public void eliminarProducto(int idProducto){
        UnitOfWork.getInstance().getProductosRepository().eliminarProducto(idProducto);
    }
    
    public void actualizarProducto(Producto producto){
        UnitOfWork.getInstance().getProductosRepository().actualizar(producto);
    }
}
