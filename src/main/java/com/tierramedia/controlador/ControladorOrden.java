/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tierramedia.controlador;

import com.tierramedia.modelo.Orden;
import com.tierramedia.unitofwork.UnitOfWork;
import java.util.List;

/**
 *
 * @author mig_2
 */
public class ControladorOrden {
    public void agregarOrden(Orden orden){
        UnitOfWork.getInstance().getOrdenesReposity().agregar(orden);
    }
    
    public List<Orden> getOrdenesUsuario(int idUsuario){
        return UnitOfWork.getInstance().getOrdenesReposity().getOrdenesUsuario(idUsuario);
    }
    
    public List<Orden> getOrdenes(){
        return UnitOfWork.getInstance().getOrdenesReposity().getOrdenes();
    }    
}
