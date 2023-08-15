import java.util.Date;

public class CuentaCorriente extends Cuenta{
    private Double descubierto;

    public CuentaCorriente(Cliente cliente, Double saldo, Double descubierto) {
        super(cliente, saldo);
        this.descubierto = descubierto;
    }

    public Double getDescubierto() {
        return descubierto;
    }

    public void setDescubierto(Double descubierto) {
        this.descubierto = descubierto;
    }

    @Override
    public void extraer(Double dinero) {
        public void extraer(Double dinero){
            if (getSaldo() + descubierto <= dinero){
                setSaldo(getSaldo() - dinero);
            }
        }
    }

    public void depositarCheque(Double monto, String banco, Date fechaPago){
        setSaldo(getSaldo()+monto);
        System.out.println("Se deposito el importe de "+monto+"por cheque del banco "+banco+" el día "+fechaPago);
    }


}
