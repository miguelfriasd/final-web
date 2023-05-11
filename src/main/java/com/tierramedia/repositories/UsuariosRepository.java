/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.repositories;

import com.tierramedia.modelo.Usuario;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class UsuariosRepository extends RepositoryBase<Usuario>{
    
    public UsuariosRepository(EntityManager entityManager) {
        super(entityManager);
    }
    
        public Usuario obtenPorUserContra(String correo, String password){
            TypedQuery<Usuario> query = entityManager.createNamedQuery("validacionLogin", Usuario.class);
            query.setParameter("correo", correo);
            query.setParameter("password", password);
            query.setMaxResults(1);
            List<Usuario> list = query.getResultList();
            if (list == null || list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        
        public boolean validacionDisponibilidadNombreUsuario(String correo){
            TypedQuery<Usuario> query = entityManager.createNamedQuery("validacionExistencia", Usuario.class);
            query.setParameter("correo", correo);
            query.setMaxResults(1);
            List<Usuario> list = query.getResultList();
            if (list == null || list.isEmpty()) {
                return true;
            }
            return false;
        }
}
