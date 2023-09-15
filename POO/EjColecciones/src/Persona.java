import java.util.ArrayList;
import java.util.List;

public class Persona {
    private String nombre;
    private String apellido;
    private Integer edad;
    private List<Cuenta> cuentas = new ArrayList<>();

    public Persona(String nombre, String apellido, Integer edad) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.cuentas = new ArrayList<>();
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

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public List<Cuenta> getCuentas() {
        return cuentas;
    }

    public void agregarCuentas(Cuenta cuent) {
        this.cuentas.add(cuent);
    }

    public String getNombreCompleto(){
        return this.getNombre()+" "+this.getApellido();
    }

    public boolean esMayorEdad(){
        return this.edad>60;
    }

    public double getSaldoTotal(){
        double saldo = 0;
        for(Cuenta cuenta: cuentas){
            saldo+=cuenta.getSaldo();
        }
        return saldo;
    }

    public void mostrarCuentas(){
        cuentas.sort(Cuenta::compareTo);
        for(Cuenta cuenta:cuentas){
            System.out.println(cuenta.getNroCuenta()+" : "+cuenta.getSaldo());
        }
    }


}
