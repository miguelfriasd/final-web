/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.modelo;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
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
@Table(name = "usuarios")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "tipo_usuario")
@NamedQueries({
    @NamedQuery(
        name = "validacionLogin",
        query = "SELECT u FROM Usuario u WHERE u.correo like :correo AND u.password like :password"
    ),
    @NamedQuery(
            name = "validacionExistencia",
            query = "SELECT u FROM Usuario u WHERE u.correo like :correo"
    )
})
public class Usuario implements Serializable{
    
    @Id
    @Column(name = "id_usuario", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "correo", unique = true, nullable = false, length = 50)
    private String correo;    

    @Column(name = "pass", nullable = false, length = 20)
    private String password;    

    public Usuario(Long id, String correo, String password) {
        this.id = id;
        this.correo = correo;
        this.password = password;
    }

    public Usuario(String correo, String password) {
        this.correo = correo;
        this.password = password;
    }

    

    public Usuario() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + Objects.hashCode(this.id);
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
        final Usuario other = (Usuario) obj;
        return Objects.equals(this.correo, other.correo);
    }

    
    
}
