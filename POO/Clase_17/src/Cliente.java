public class Cliente {
    private String nombre;
    private String apellido;
    private String cedula;
    private double saldoEnCuenta;
    private double limite;
    private double deuda;

    public Cliente(String nombre, String apellido, String cedula, double limite) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
        this.saldoEnCuenta = 0;
        this.limite = limite;
        this.deuda = 0; //inicialmente no debemos nada.
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public double getSaldoEnCuenta() {
        return saldoEnCuenta;
    }

    public void setSaldoEnCuenta(double saldoEnCuenta) {
        this.saldoEnCuenta = saldoEnCuenta;
    }

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    public double getDeuda() {
        return deuda;
    }

    public void setDeuda(double deuda) {
        this.deuda = deuda;
    }
    public void comprar(double importe) throws ClienteException{
        if(saldoEnCuenta+importe>limite){
            throw new ClienteException("no pudimos procesar su compra, verifique su saldo");
        }
        if(importe<=0){
            throw new ClienteException("El importe debe ser mayor que 0");
        }
        if(importe>deuda){
            throw new ClienteException("No se puede tener un importe mayor a la deuda");
        }
        saldoEnCuenta+=importe;
        System.out.println("compra realizada por $: "+importe);

    }
}
