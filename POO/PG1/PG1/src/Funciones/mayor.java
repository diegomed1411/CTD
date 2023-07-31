/*
* Ejercicio 2
Escribir una función que reciba tres números y devuelva el máximo entre los tres números.
Integer maximoEntreTresNumeros(Integer unNumeroA, Integer unNumeroB, Integer
unNumeroC)
Luego hacer un programa que permita el ingreso de 3 valores, utilice la función y muestre
el resultado.
* */

package Funciones;

import java.util.Scanner;

public class mayor {

    public static Integer esMayor(Integer unNumeroA, Integer unNumeroB, Integer unNumeroC){
        if(unNumeroA >= unNumeroB && unNumeroA >= unNumeroC){
            return unNumeroA;
        } else if (unNumeroB >= unNumeroA && unNumeroB >= unNumeroC) {
            return unNumeroB;
        } else return unNumeroC;
    }


    public static void main (String[] args){
        Scanner scanner;
        scanner=new Scanner(System.in);
        Integer numero1;
        Integer numero2;
        Integer numero3;
        System.out.println("Escriba primer numero a evaluar:");
        numero1 = scanner.nextInt();
        System.out.println("Escriba segundo numero a evaluar:");
        numero2 = scanner.nextInt();
        System.out.println("Escriba tercer numero a evaluar:");
        numero3 = scanner.nextInt();
        System.out.println("El mayor numero de los tres es:"+esMayor(numero1, numero2, numero3));
    }
}
