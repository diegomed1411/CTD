public class Vegetariano extends Menu {
    private Integer Especias;
    private Integer SalsaVegetariana;

    public Vegetariano(double precioBase, Integer especias, Integer salsaVegetariana) {
        super(precioBase);
        Especias = especias;
        SalsaVegetariana = salsaVegetariana;
    }

    public Integer getEspecias() {
        return Especias;
    }

    public void setEspecias(Integer especias) {
        Especias = especias;
    }

    public Integer getSalsaVegetariana() {
        return SalsaVegetariana;
    }

    public void setSalsaVegetariana(Integer salsaVegetariana) {
        SalsaVegetariana = salsaVegetariana;
    }

    @Override
    protected String armadoMenu() {
        return "Menu base: "+getPrecioBase()+"\\nCantidad de especias: "+getEspecias()+"\\Cantidad de salsas: "+getSalsaVegetariana()+"\\nTotal: "+calcularPrecioVenta();
    }

    @Override
    protected Double calcularPrecioVenta() {
        return getPrecioBase()+getEspecias()*getPrecioBase()*0.01+2*getSalsaVegetariana();
    }
}
