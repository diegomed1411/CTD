public class Rojo implements Estado{

    @Override
    public void cambiarEstado(Semasforo semasforo) {
        semasforo.setEstado(new Verde());
        mostrarAviso();
    }

    @Override
    public void mostrarAviso() {
        System.out.println("Detenerse");;
    }
}
