/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.servlet;

import com.tierramedia.controlador.ControladorUsuario;
import com.tierramedia.modelo.Administrador;
import com.tierramedia.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mig_2
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
        response.sendRedirect("index.jsp");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String correo = request.getParameter("correo");
        String password = request.getParameter("contra");
        try {
            ControladorUsuario controladorUsuario = new ControladorUsuario();
            Usuario usuario = controladorUsuario.getUsuario(correo, password);
            if (usuario != null && usuario instanceof Administrador) {
                request.getSession().setAttribute("usuario", usuario);
                response.sendRedirect("productos.jsp");
            }
            else if (usuario != null && !(usuario instanceof Administrador)) {
                request.getSession().setAttribute("usuario", usuario);
                response.sendRedirect("tienda.jsp");
            }
            else{
                response.sendRedirect("index.jsp");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
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
