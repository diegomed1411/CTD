import java.util.Date;
public class Persona {
    private String nombre;
    private String apellido;
    private String dni;
    private Date fechaVacuna;
    private String getNombreVacuna;

    public Persona(String nombre, String apellido, String dni, Date fechaVacuna, String getNombreVacuna) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.fechaVacuna = fechaVacuna;
        this.getNombreVacuna = getNombreVacuna;
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

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Date getFechaVacuna() {
        return fechaVacuna;
    }

    public void setFechaVacuna(Date fechaVacuna) {
        this.fechaVacuna = fechaVacuna;
    }

    public String getGetNombreVacuna() {
        return getNombreVacuna;
    }

    public void setGetNombreVacuna(String getNombreVacuna) {
        this.getNombreVacuna = getNombreVacuna;
    }
}
