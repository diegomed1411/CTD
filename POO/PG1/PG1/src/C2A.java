
/*
Ejercicio 1
Ingresá tu nombre y tu apellido por separado, a partir de estas variables debés obtener en
una tercera tus iniciales.
* */
import java.util.Scanner;

public class C2A {
    public static void main(String[] args){
        Scanner scanner;
        scanner=new Scanner(System.in);
        String nombre;
        System.out.println("Ingrese su nombre:");
        nombre = scanner.nextLine();
        String apellido;
        System.out.println("Ingrese su apellido:");
        apellido = scanner.nextLine();
        System.out.println("Sus iniciales son:"+nombre.substring(0,1)+apellido.substring(0,1));
    }
}
