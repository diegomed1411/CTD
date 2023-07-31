/*
Ejercitación String e Integer
Ejercicio 1
Definir dos cadenas de texto. Comprobar si son iguales o distintas e indicar mediante un
mensaje.
Ejercicio 2
Definir dos Integer y determinar cuál es mayor, cuál es menor o si son iguales.
Informar el resultado obtenido.
*/

public class Comparacion {
    public static void main(String[] args){
        //ej1
        String cadena1 = "Hola";
        String cadena2 = "hola";
        if(cadena1.toUpperCase().equals(cadena2.toUpperCase())){
            System.out.println("cadenas iguales");
        }else {
            System.out.println("cadenas diferentes");
        }

        //ej 2
        Integer num1 = 5;
        Integer num2 = 7;
        if(num1.equals(num2)){
            System.out.println("Numeros Iguales");
        }else if (num1.compareTo(num2)>0){
            System.out.println("Numero 1 es mayor a Numero 2");
        }else{
            System.out.println("Numero 2 es mayor a Numero 1");
        }
    }
}


