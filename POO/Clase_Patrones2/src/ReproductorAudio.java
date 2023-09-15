public class ReproductorAudio {
    private Estado estado;

    public ReproductorAudio() {
        this.estado = new EstadoDetenido();
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public void reproducir(){
        estado.reproducir();
    }

    public void pausar(){
        estado.pausar();
    }

    public void detener(){
        estado.detener();
    }
}
