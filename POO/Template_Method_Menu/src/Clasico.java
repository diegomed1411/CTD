public class Clasico extends Menu {
    public Clasico(double precioBase) {
        super(precioBase);
    }

    @Override
    protected String armadoMenu() {
        return "Precio Base: "+getPrecioBase()+"\\nTotal: "+calcularPrecioVenta();
    }

    @Override
    protected Double calcularPrecioVenta() {
        return getPrecioBase();
    }
}
