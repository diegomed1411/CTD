public class Usuario {
    private String nombre;
    private Long id;
    private String email;
    private Double sueldo;

    public Usuario(String nombre, String email, Double sueldo) {
        this.nombre = nombre;
        this.email = email;
        this.sueldo = sueldo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Double getSueldo() {
        return sueldo;
    }

    public void setSueldo(Double sueldo) {
        this.sueldo = sueldo;
    }

    public double subirSueldo(double precio){
        this.sueldo = this.sueldo + precio;
        return this.sueldo;
    }
}
