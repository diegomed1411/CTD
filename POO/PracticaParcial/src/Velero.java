public class Velero extends Embarcacion{
    private int mastiles;

    public int getMastiles() {
        return mastiles;
    }

    public void setMastiles(int mastiles) {
        this.mastiles = mastiles;
    }

    public Velero(Capitan capitan, double precioBase, double valorAdicional, int anioFabricacion, double eslora, int mastiles) {
        super(capitan, precioBase, valorAdicional, anioFabricacion, eslora);
        this.mastiles = mastiles;
    }

    public Boolean evaluar(){
        return mastiles>4;
    }
}
