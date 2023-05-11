/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.pruebas;

import com.tierramedia.modelo.Administrador;
import com.tierramedia.modelo.Producto;
import com.tierramedia.modelo.Usuario;
import com.tierramedia.repositories.UsuariosRepository;
import com.tierramedia.unitofwork.UnitOfWork;

/**
 *
 * @author mig_2
 */
public class PruebasMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Administrador admin = new Administrador("admin@admin.com", "1234");
        UnitOfWork.getInstance().getAdministradoresRepository().agregar(admin);
    }
    
}
