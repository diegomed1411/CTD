// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        Cliente jero = new Cliente(1,"Azulay", 123456, 852);
        Cuenta cuenta1 = new CajaAhorro(jero, 150000.30, 8.5);
        CuentaCorriente cuenta2 = new CuentaCorriente(jero, 5000.00, 1000.00);
        System.out.println(cuenta1.extraer(5000.30));
        cuenta1.extraer(5000.30);
        System.out.println(cuenta1.getSaldo());

        System.out.println(cuenta2.extraer(6000.0));
        cuenta2.extraer(6000.0);
        System.out.println(cuenta2.getSaldo());
    }
}