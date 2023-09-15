import java.util.InputMismatchException;
import java.util.Scanner;

public class Division {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;
        do {
            try {
                System.out.println("Ingrese el primer valor");
                int valor1 = scanner.nextInt();
                System.out.println("Ingrese el segundo valor");
                int valor2 = scanner.nextInt();
                if(valor2 == 0){
                    throw new ArithmeticException("No se puede dividir entre 0");
                }
                double resultado = (double) valor1 / valor2;
                System.out.println(resultado);
                System.out.println("division finalizada");
                continuar = false;
            } catch (ArithmeticException e) {
                System.out.println("Mensaje : " + e.getMessage());
                System.out.println("Ingrese nuevamente la division a realizar");
                scanner.nextLine();
            } catch (InputMismatchException e) {
                System.out.println("no se admiten letras, ingrese numeros " + e.getMessage());
                scanner.nextLine();
            }
        }while (continuar);

        }
}
