public class CajaAhorro extends Cuenta{
    private Double tasaInteres;

    public CajaAhorro(Cliente cliente, Double saldo, Double tasaInteres) {
        super(cliente, saldo);
        this.tasaInteres = tasaInteres;
    }
    public Double getTasaInteres() {
        return tasaInteres;
    }

    public void setTasaInteres(Double tasaInteres) {
        this.tasaInteres = tasaInteres;
    }

    public void cobrarInteresMensual(){
        setSaldo(getSaldo()*(tasaInteres/100)/12);
    }

    @Override
    public String extraer(Double dinero) {
        if (getSaldo() >= dinero){
            setSaldo(getSaldo()-dinero);
            return "extraccion exitosa";
        } else {
            return "saldo insuficiente";
        }
    }
}
