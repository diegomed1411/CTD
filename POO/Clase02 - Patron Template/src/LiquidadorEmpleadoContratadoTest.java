import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LiquidadorEmpleadoContratadoTest {
    @Test
    public void testLiquidacionContratado(){
        Empleado empleadoPepe = new EmpleadoContratado("Jose", "Mujica", "55889966", 30.0, 300.0);
        Liquidador liquidadorContratatado = new LiquidadorEmpleadoContratado();
        String respuesta = "La liquidacion generada es:  un documento digital. Saldo a liquidar: 9000.0";
        String liquidacion = liquidadorContratatado.liquidarSueldo(empleadoPepe);

        assertEquals(respuesta, liquidacion);
    }
}
