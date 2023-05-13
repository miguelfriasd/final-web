/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tierramedia.servlet;

import com.tierramedia.controlador.ControladorProducto;
import com.tierramedia.modelo.Administrador;
import com.tierramedia.modelo.Producto;
import com.tierramedia.modelo.Usuario;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author mig_2
 */
public class agregarProductoServlet extends HttpServlet {


    

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
        doPost(request, response);
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
        Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
        if (usuario != null && usuario instanceof Administrador) {
            Part file=request.getPart("imagen");
            String nombreImagen=file.getSubmittedFileName();
            String uploadPath="C:\\Users\\mig_2\\Downloads\\Documents\\ITSON\\EneroMayo2023\\AplicacionesWeb\\final-web\\src\\main\\webapp\\assets\\img\\"+nombreImagen;	
            try{
                FileOutputStream fos=new FileOutputStream(uploadPath);
                InputStream is=file.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(IOException e)
            {
                e.printStackTrace();
            }
            
            String nombre = (String)request.getParameter("nombre");
            Float precio = Float.valueOf(request.getParameter("precio"));
            Producto producto = new Producto(nombre, nombreImagen, precio);
            ControladorProducto controladorProducto = new ControladorProducto();
            controladorProducto.agregarProducto(producto);
            response.sendRedirect("productos.jsp");
        }
        else{
            response.sendRedirect("index.jsp");
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
