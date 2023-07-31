/*Ejercicio 1
Definir dos números enteros. Asignarles un valor a cada uno. Comprobar si un número es
divisible por el segundo e indicar mediante un mensaje el resultado obtenido.
NOTA: Que sea divisible quiere decir que al dividir da un valor exacto, es decir, sin
decimales.
* */


public class EJ1 {
    public static void main(String[] args){
    int num1 = 7;
    int num2 = 3;
    if(num1%num2 == 0){
        System.out.println("El número: "+num1+" es divisible entre: "+num2);
    } else{
        System.out.println("El número: "+num1+" no es divisible entre: "+num2);
    }
    }
}
