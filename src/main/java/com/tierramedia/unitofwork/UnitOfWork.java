/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.unitofwork;

import com.tierramedia.repositories.AdministradoresRepository;
import com.tierramedia.repositories.OrdenesRepository;
import com.tierramedia.repositories.ProductosRepository;
import com.tierramedia.repositories.UsuariosRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;

/**
 *
 * @author mig_2
 */
public class UnitOfWork {
    
    private static UnitOfWork instance;
    private static EntityManager entityManager;
    private ProductosRepository productosRepository;
    private UsuariosRepository usuariosRepository;
    private OrdenesRepository ordenesRepository;
    private AdministradoresRepository administradoresRepository;
    
    private UnitOfWork() {
        entityManager = Persistence.createEntityManagerFactory("tierramedia").createEntityManager();
    }
    
    public static UnitOfWork getInstance(){
        return (instance != null) ? instance : (new UnitOfWork()); 
    }

    private EntityManager getEntityManager() {
        return (entityManager != null)
                ? entityManager
                : (entityManager = Persistence.createEntityManagerFactory("tierramedia").createEntityManager());
    }
    
    public UsuariosRepository getUsuariosRepository(){
        return(usuariosRepository != null) ? usuariosRepository : (new UsuariosRepository(getEntityManager()));
    }
    
    public AdministradoresRepository getAdministradoresRepository(){
        return(administradoresRepository != null) ? administradoresRepository : (new AdministradoresRepository(getEntityManager()));
    }
    
    public ProductosRepository getProductosRepository(){
        return(productosRepository != null) ? productosRepository : (new ProductosRepository(getEntityManager()));
    }
    
    public OrdenesRepository getOrdenesReposity(){
        return(ordenesRepository != null) ? ordenesRepository : (new OrdenesRepository(getEntityManager()));
    }
}
