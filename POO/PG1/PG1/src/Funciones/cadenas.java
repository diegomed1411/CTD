/*
Ejercicio 3
Escribir una función:
boolean cadenasDeTextoDistintas(String unTextoA, String unTextoB)
que debe tomar dos cadenas de texto y devolver true, en caso de que sean distintos, o
false, en caso de que coincidan.
*/

package Funciones;

import java.util.Scanner;

public class cadenas {

    public static Boolean iguales(String palabra1, String palabra2){
        return palabra1.toUpperCase().equals(palabra2.toUpperCase());
    }

    public static void main (String[] args) {
        Scanner scanner;
        scanner = new Scanner(System.in);
        String pal1;
        String pal2;
        String resultado;
        System.out.println("Escriba la primer palabra:");
        pal1 = scanner.nextLine();
        System.out.println("Escriba la segunda palabra:");
        pal2 = scanner.nextLine();
        if (iguales(pal1, pal2)) {
        resultado = "son iguales";
        }else resultado = "no son iguales";
        System.out.println("Las palabras ingresadas "+resultado);
        }
    }

