public class LiquidadorEmpleadoContratado extends Liquidador{

    @Override
    protected Double calcularSueldo(Empleado empleado) {
        Double respuesta = 0.0;

        if (empleado instanceof EmpleadoContratado) {

            EmpleadoContratado contratado = (EmpleadoContratado) empleado;
            respuesta = contratado.getHorasTrabajadas() * contratado.getValorPorHora();
        }
        return respuesta;
    }

    @Override
    protected String emitirRecibo(Empleado empleado) {
        return " un documento digital";
    }
}
