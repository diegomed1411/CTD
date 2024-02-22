public abstract class Liquidador {

    public String liquidarSueldo(Empleado empleado){
        String respuesta = "La liquidación no pudo ser calculada";

        Double sueldo = calcularSueldo(empleado);

        if(sueldo>0){
            String recibo = emitirRecibo(empleado);
            respuesta = "La liquidacion generada es: "+recibo+". Saldo a liquidar: "+sueldo;
        }

        return respuesta;
    }



    protected abstract Double calcularSueldo(Empleado empleado);
    protected abstract String emitirRecibo(Empleado empleado);

    private String depositarSueldo(Empleado empleado){
        return "Se deposito el importe de:"+calcularSueldo(empleado)+" en la cuenta: "+empleado.getNumeroCuenta();
    };

}
