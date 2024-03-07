import com.company.*;

public class Main {
    public static void main(String[] args) {
        Cuenta cuenta3 = new Cuenta();
        cuenta3.setSaldo(2000d);
        cuenta3.setNumero(123);
        cuenta3.setEstrategia(new EstrategiaCajaAhorro());

        cuenta3.extraer(2100d);
        System.out.println(cuenta3.getSaldo());

        cuenta3.setEstrategia(new EstrategiaCuentaCorriente());
        cuenta3.extraer(2100d);
        System.out.println(cuenta3.getSaldo());

    }
}