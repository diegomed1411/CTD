public abstract class Menu {
    private double precioBase;

    public double getPrecioBase() {
        return precioBase;
    }

    public void setPrecioBase(double precioBase) {
        this.precioBase = precioBase;
    }

    public Menu(double precioBase) {
        this.precioBase = precioBase;
    }

    protected abstract String armadoMenu();
    protected abstract Double calcularPrecioVenta();

}
