/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.repositories;

import com.tierramedia.modelo.Producto;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class ProductosRepository extends RepositoryBase<Producto>{
    
    public ProductosRepository(EntityManager entityManager) {
        super(entityManager);
    }
    
    public List<Producto> getAllProductos(){
        TypedQuery<Producto> query = entityManager.createNamedQuery("selectProductos", Producto.class);
        return query.getResultList();
    }
    
    public Producto getProducto(int id){
        TypedQuery<Producto> query = entityManager.createNamedQuery("selectProducto", Producto.class);
        query.setParameter("id", id);
        Producto producto = query.getSingleResult();
        return producto;  
    }
    
}
