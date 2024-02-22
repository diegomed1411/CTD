import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LiquidadorEmpleadoEfectivoTest {
    @Test
    public void testLiquidacionEmpleado(){
        Empleado empleadoJuan = new EmpleadoEfectivo("Juan", "Martini", "123456",400.00, 40.00, 60.00);
        Liquidador liquidadorEfectivo = new LiquidadorEmpleadoEfectivo();
        String respuesta = "La liquidacion generada es: un documento impreso. Saldo a liquidar: 420.0";

        String liquidacion = liquidadorEfectivo.liquidarSueldo(empleadoJuan);

        assertEquals(respuesta, liquidacion);
    }
}
