/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.servlet;

import com.tierramedia.controlador.ControladorOrden;
import com.tierramedia.modelo.Articulo;
import com.tierramedia.modelo.Orden;
import com.tierramedia.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @usuarioor mig_2
 */
public class CheckoutCarritoServlet extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Date date = new Date();
        ArrayList<Articulo> carrito = (ArrayList<Articulo>) request.getSession().getAttribute("carrito");
        Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
        if(carrito != null && usuario!=null) {
            for(Articulo c:carrito) {
                Orden orden = new Orden();
                orden.setIdProducto(new Long(c.getIdProducto()));
                orden.setIdUsuario(usuario.getId());
                orden.setCantidad(c.getCantidad());
                orden.setFecha(date);
                orden.setCorreoUsuario(usuario.getCorreo());
                ControladorOrden controladorOrden = new ControladorOrden();
                controladorOrden.agregarOrden(orden);
            }
            carrito.clear();
            response.sendRedirect("ordenes.jsp");
        }else {
            if(usuario==null) {
                response.sendRedirect("login.jsp");
                return;
            }
            response.sendRedirect("cart.jsp");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
