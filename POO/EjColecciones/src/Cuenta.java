public class Cuenta implements Comparable<Cuenta>{
    private Integer nroCuenta;
    private Double saldo;

    public Integer getNroCuenta() {
        return nroCuenta;
    }

    public Double getSaldo() {
        return saldo;
    }

    public Cuenta(Integer nroCuenta, Double saldo) {
        this.nroCuenta = nroCuenta;
        this.saldo = saldo;
    }


    @Override
    public int compareTo(Cuenta c2) {
        return this.getNroCuenta() - c2.getNroCuenta();
    }
}
