public class Semasforo{
    public Estado estado;

    public Semasforo() {
        this.estado = new Verde();
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }
}