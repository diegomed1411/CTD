public abstract class Cuenta {
    private Cliente cliente;
    private Double saldo;

    public void depositar (Double dinero){
        setSaldo(getSaldo()+dinero);
    }

    public abstract String extraer(Double dinero);

    public String informarSaldo() {
        return "el saldo de la cuenta es "+saldo;
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
