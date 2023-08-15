package mesas;

public class Usuariojuego {
    private String nombre;
    private String clave;
    private Integer puntaje;
    private Integer nivel;

    public Usuariojuego(String nombre, String clave, Integer puntaje, Integer nivel) {
        this.nombre = nombre;
        this.clave = clave;
        this.puntaje = puntaje;
        this.nivel = nivel;
    }

    public String getNombre() {
        return nombre;
    }

    public String getClave() {
        return clave;
    }

    public Integer getPuntaje() {
        return puntaje;
    }

    public Integer getNivel() {
        return nivel;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setPuntaje(Integer puntaje) {
        this.puntaje = puntaje;
    }

    public void setNivel(Integer nivel) {
        this.nivel = nivel;
    }

    public void aumentarPuntaje(){
        this.puntaje++;
    }

    public void aumentarNivel(){
        this.nivel++;
    }
}
