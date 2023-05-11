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
import java.util.Date;
import java.util.Objects;

/**
 *
 * @author mig_2
 */
@Entity
@Table(name = "ordenes")
@NamedQueries({
    @NamedQuery(
            name = "selectOrdenes",
            query = "SELECT a FROM Orden a"
    ),
    @NamedQuery(
        name = "selectOrdenesUsuario",
        query = "SELECT u FROM Orden u WHERE u.idUsuario = :id_usuario"
    )
})
public class Orden implements Serializable{
    
    @Id
    @Column(name = "id_orden", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "id_producto", nullable = false)
    private Long idProducto;
    
    @Column(name = "id_usuario", nullable = false)
    private Long idUsuario;
    
    @Column(name = "correo_usuario", nullable = false)
    private String correoUsuario;
    
    @Column(name = "cantidad", nullable = false)
    private int cantidad;
    
    @Column(name = "fecha", nullable = false)
    private Date fecha;

    public Orden(Long id) {
        this.id = id;
    }

    public Orden(Long idProducto, Long idUsuario, int cantidad, Date fecha) {
        this.idProducto = idProducto;
        this.idUsuario = idUsuario;
        this.cantidad = cantidad;
        this.fecha = fecha;
    }

    public Orden() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Long idProducto) {
        this.idProducto = idProducto;
    }

    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }

    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }

    
    
    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 47 * hash + Objects.hashCode(this.id);
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
        final Orden other = (Orden) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Orden{" + "id=" + id + ", idProducto=" + idProducto + ", idUsuario=" + idUsuario + ", cantidad=" + cantidad + ", fecha=" + fecha + '}';
    }
    
    
    
}
