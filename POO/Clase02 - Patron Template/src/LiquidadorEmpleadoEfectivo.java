public class LiquidadorEmpleadoEfectivo extends Liquidador{
    @Override
    protected Double calcularSueldo(Empleado empleado) {
        Double respuesta = 0.0;
        if(empleado instanceof EmpleadoEfectivo){
            EmpleadoEfectivo efectivo = (EmpleadoEfectivo) empleado;
            respuesta = efectivo.getSueldoBase()-efectivo.getDescuento()+efectivo.getPremio();
        }
        return respuesta;
    }

    @Override
    protected String emitirRecibo(Empleado empleado) {
        return "un documento impreso";
    }
}
