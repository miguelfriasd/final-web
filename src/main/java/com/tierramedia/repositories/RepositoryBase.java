/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.repositories;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.criteria.CriteriaQuery;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class RepositoryBase <T>{
    protected EntityManager entityManager;
    private Class<T> type;

    public RepositoryBase(EntityManager entityManager) {
        this.entityManager = entityManager;

        Type t = getClass().getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) t;
        type = (Class) pt.getActualTypeArguments()[0];
    }

    public T agregar(T entity) {
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();

        return entity;
    }

    public T actualizar(T entity) {
        entityManager.getTransaction().begin();
        entityManager.persist(entityManager.merge(entity));
        entityManager.getTransaction().commit();

        return entity;
    }

    public void eliminar(T entity) {
        entityManager.getTransaction().begin();
        entityManager.remove(entityManager.merge(entity));
        entityManager.getTransaction().commit();
    }

    public T obtener(Long id) {
        return entityManager.find(type, id);
    }

    public List<T> lista() {
        CriteriaQuery criteria = entityManager.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(type));
        Query query = entityManager.createQuery(criteria);
        return query.getResultList();
    }
}
