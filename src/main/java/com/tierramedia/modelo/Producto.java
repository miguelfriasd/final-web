/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.modelo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.util.Objects;

/**
 *
 * @author mig_2
 */

@Entity
@Table(name = "productos")
@NamedQueries({
    @NamedQuery(
            name = "selectProductos",
            query = "SELECT a FROM Producto a"
    ),
    @NamedQuery(
            name = "selectProducto",
            query = "SELECT u FROM Producto u WHERE u.id = :id"
    ),
    @NamedQuery(
            name = "eliminarProducto",
            query = "DELETE FROM Producto u WHERE u.id = :id"
    )
})
public class Producto implements Serializable{
    
    @Id
    @Column(name = "id_producto", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;    
    
    @Column(name = "nombre ", nullable = false, length = 255)
    private String nombre; 
    
    @Column(name = "img_producto", nullable = false, length = 255)
    private String img; 
    
    @Column(name = "precio", nullable = false)
    private double precio; 

    public Producto(Long id) {
        this.id = id;
    }
    
    public Producto(Long id, String nombre, String img, double precio) {
        this.id = id;
        this.nombre = nombre;
        this.img = img;
        this.precio = precio;
    }

    public Producto(String nombre, String img, double precio) {
        this.nombre = nombre;
        this.img = img;
        this.precio = precio;
    }

    public Producto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + Objects.hashCode(this.id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Producto other = (Producto) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
    
    
    
}
