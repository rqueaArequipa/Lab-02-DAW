/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miemrpesa.funciones;

/**
 *
 * @author 51946
 */
public class OperacionesDiversas {
    public float raizCuadrada(int num){
        return (float)Math.sqrt(num);
    }
    
    public float raizCubica(int num){
        return (float)Math.cbrt(num);
    }
    
    public int potencia2(int num){
        return (int)Math.pow(num, 2);
    }
    
    public int potencia3(int num){
        return (int)Math.pow(num, 3);
    }
   
    public int valorAbs(int num){
        return (int)Math.abs(num);
    }
    
}
