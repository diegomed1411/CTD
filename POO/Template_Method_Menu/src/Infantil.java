public class Infantil extends Menu{
    private Integer juguetes;

    public Infantil(double precioBase, Integer juguetes) {
        super(precioBase);
        this.juguetes = juguetes;
    }

    public Integer getJuguetes() {
        return juguetes;
    }

    public void setJuguetes(Integer juguetes) {
        this.juguetes = juguetes;
    }

    @Override
    protected String armadoMenu() {
        return "Menú Base: "+getPrecioBase()+"\\nCantidad Juguetes: "+getJuguetes()+"\\nTotal: "+calcularPrecioVenta();
    }

    @Override
    protected Double calcularPrecioVenta() {
        return getPrecioBase() + getJuguetes()*3;
    }
}
