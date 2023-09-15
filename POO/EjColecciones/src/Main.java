// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        Cuenta cuenta1 = new Cuenta(10, 1000.00);
        Cuenta cuenta2 = new Cuenta(05, 1500.00);
        Cuenta cuenta3 = new Cuenta(07, 2000.00);

        Persona diego = new Persona("Diego", "Medina",36 );
        diego.agregarCuentas(cuenta1);
        diego.agregarCuentas(cuenta2);
        diego.agregarCuentas(cuenta3);
        diego.mostrarCuentas();
        System.out.println(diego.getSaldoTotal());
        }
}