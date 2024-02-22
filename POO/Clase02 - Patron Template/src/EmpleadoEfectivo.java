public class EmpleadoEfectivo extends Empleado{
    private Double sueldoBase;
    private Double descuento;
    private Double premio;

    public EmpleadoEfectivo(String nombre, String apellido, String numeroCuenta, Double sueldoBase, Double descuento, Double premio) {
        super(nombre, apellido, numeroCuenta);
        this.sueldoBase = sueldoBase;
        this.descuento = descuento;
        this.premio = premio;
    }

    public Double getSueldoBase() {
        return sueldoBase;
    }

    public void setSueldoBase(Double sueldoBase) {
        this.sueldoBase = sueldoBase;
    }

    public Double getDescuento() {
        return descuento;
    }

    public void setDescuento(Double descuento) {
        this.descuento = descuento;
    }

    public Double getPremio() {
        return premio;
    }

    public void setPremio(Double premio) {
        this.premio = premio;
    }
}
