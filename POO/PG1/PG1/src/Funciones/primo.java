/*
Ejercicio 1
Hacer una función que dado un número indica si es un número primo o no. Un número
primo es aquel que solo puede dividirse entre 1 y sí mismo. Por ejemplo: 25 no es primo,
ya que 25 es divisible por 1, 5 y 25. 17 sí es primo porque solo se puede dividir por 1 y por
17.
Usar esta función en un programa, que permita el ingreso de un número y luego llame a la
función desarrollada para comprobar si es primo o no. Para resolverlo usar la función
obtenida en el ejercicio desarrollado en la clase asincrónica. boolean esDivisible(int n, int
divisor)
*/


package Funciones;

import java.util.Scanner;

public class primo {
    public static boolean esDivisible(int dividendo, int divisor){
        return dividendo % divisor == 0;
    }

    public static boolean esPrimo(int numero){
        if(numero == 1){
            return false;
        }
        for(int i =2; i < numero; i++){
            if(esDivisible(numero, i)){
                return false;
            }
        }
        return true;
    }

    public static void main (String[] args){
        Scanner scanner;
        scanner=new Scanner(System.in);
        Integer numeroPrimo;
        System.out.println("Escriba numero primo a evaluar:");
        numeroPrimo = scanner.nextInt();
        String resultado;
        if(esPrimo(numeroPrimo)){
            resultado = "es primo";
        } else resultado = "no es primo";
        System.out.println("El numero "+numeroPrimo+" "+resultado);
    }
}
