public abstract class Cuenta {
    private Cliente cliente;
    private Double saldo;

    public void depositar (Double dinero){
        this.saldo = saldo + dinero;
    }

    public void extraer(Double dinero){
        if (this.saldo <= dinero){
            this.saldo = saldo - dinero;
        }
    }

    public Double informarSaldo() {
        return saldo;
    }

    public Cuenta(Cliente cliente, Double saldo) {
        this.cliente = cliente;
        this.saldo = saldo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }
}
