/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.modelo;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

/**
 *
 * @author mig_2
 */
@Entity
@DiscriminatorValue("administrador")
public class Administrador extends Usuario{

    public Administrador(Long id, String correo, String password) {
        super(id, correo, password);
    }

    public Administrador(String correo, String password) {
        super(correo, password);
    }

    public Administrador() {
    }
    
}
