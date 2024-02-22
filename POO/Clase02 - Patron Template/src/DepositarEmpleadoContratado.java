import org.junit.jupiter.api.Test;

public class DepositarEmpleadoContratado extends Liquidador{
    @Test
    public void testDepositarSueldo(){
        Empleado empleadoDiana = new EmpleadoContratado("Diana", "Delgado", "456789", 50.0, 1000.0);
        Liquidador liquidador = new LiquidadorEmpleadoContratado();


        String respuesta = "Se deposito el importe de:50000.0 en la cuenta: 456789";

        String depositar = liquidador.de


    }
}
