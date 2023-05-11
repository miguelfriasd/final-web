/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.servlet;

import com.tierramedia.controlador.ControladorProducto;
import com.tierramedia.modelo.Articulo;
import com.tierramedia.modelo.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mig_2
 */
public class AgregarCarritoServlet extends HttpServlet {


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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            ControladorProducto controladorProducto = new ControladorProducto();
            Producto producto = controladorProducto.getProducto(id);
            if (producto == null) {
                return;
            }
            ArrayList<Articulo> carrito = (ArrayList<Articulo>) request.getSession().getAttribute("carrito");
            Articulo articulo = new Articulo(id,1);
            if (carrito==null) {
                carrito = new ArrayList<>();
                carrito.add(articulo);
                request.getSession().setAttribute("carrito",carrito);
            }
            else{
                if (carrito.contains(articulo)) {
                    articulo = carrito.get(carrito.indexOf(articulo));
                    articulo.aumentarCantidad();
                }
                else{
                    carrito.add(articulo);
                }
            }
            response.sendRedirect("tienda.jsp");
        } catch (NumberFormatException e) {
            e.printStackTrace();
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
