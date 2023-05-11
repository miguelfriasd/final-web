/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tierramedia.repositories;

import com.tierramedia.modelo.Administrador;
import jakarta.persistence.EntityManager;

/**
 *
 * @author miguel
 */
public class AdministradoresRepository extends RepositoryBase<Administrador>{
    
    public AdministradoresRepository(EntityManager entityManager) {
        super(entityManager);
    }
    
}
