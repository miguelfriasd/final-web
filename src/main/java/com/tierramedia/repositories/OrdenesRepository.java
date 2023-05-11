/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.repositories;

import com.tierramedia.modelo.Orden;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class OrdenesRepository extends RepositoryBase<Orden>{
    
    public OrdenesRepository(EntityManager entityManager) {
        super(entityManager);
    }
    
    public List<Orden> getOrdenesUsuario(int idUsuario){
        TypedQuery<Orden> query = entityManager.createNamedQuery("selectOrdenesUsuario", Orden.class);
        query.setParameter("id_usuario", idUsuario);
        return query.getResultList();
    }
    
    public List<Orden> getOrdenes(){
        TypedQuery<Orden> query = entityManager.createNamedQuery("selectOrdenes", Orden.class);
        return query.getResultList();
    }
    
}
