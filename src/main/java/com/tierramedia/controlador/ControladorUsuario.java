/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.controlador;

import com.tierramedia.modelo.Usuario;
import com.tierramedia.unitofwork.UnitOfWork;

/**
 *
 * @author mig_2
 */
public class ControladorUsuario {
    
    public Usuario getUsuario(String correo, String password){
        return UnitOfWork.getInstance().getUsuariosRepository().obtenPorUserContra(correo, password);
    }
    
    public boolean validacionDisponibilidadNombreUsuario(String correo){
        return UnitOfWork.getInstance().getUsuariosRepository().validacionDisponibilidadNombreUsuario(correo);
    }
    
    public void agregarUsuario(Usuario usuario){
        UnitOfWork.getInstance().getUsuariosRepository().agregar(usuario);
    }
}
