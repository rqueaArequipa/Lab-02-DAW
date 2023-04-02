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
public class OperacionesBasicas {
    public int suma(int num1, int num2){
        int suma = 0;
        suma = num1 + num2;
        return suma;
    }
    
    public int restar(int num1, int num2){
        int resta = 0;
        resta = num1 - num2;
        return resta;
    }
    
    public int multiplicar(int num1, int num2){
        int producto = 0;
        producto = num1 * num2;
        return producto;
    }
    
    public float dividir(int num1, int num2){
        float residuo = 0;
        residuo = (float) num1 / num2;
        return residuo;
    }
    
}
