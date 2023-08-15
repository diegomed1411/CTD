public class Cliente {
    private Integer numero;
    private String apellido;
    private Integer dni;
    private Integer cuit;

    public Cliente(Integer numero, String apellido, Integer dni, Integer cuit) {
        this.numero = numero;
        this.apellido = apellido;
        this.dni = dni;
        this.cuit = cuit;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Integer getDni() {
        return dni;
    }

    public void setDni(Integer dni) {
        this.dni = dni;
    }

    public Integer getCuit() {
        return cuit;
    }

    public void setCuit(Integer cuit) {
        this.cuit = cuit;
    }
}
