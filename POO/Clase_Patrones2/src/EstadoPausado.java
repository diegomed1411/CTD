public class EstadoPausado implements Estado{
    @Override
    public void reproducir() {
        System.out.println("Inicializando la reproduccion");
    }

    @Override
    public void pausar() {
        System.out.println("Reproduccion en pausa");
    }

    @Override
    public void detener() {
        System.out.println("Reproduccion detenida");
    }
}
