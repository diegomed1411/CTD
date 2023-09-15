public class Amarillo implements Estado{

    @Override
    public void cambiarEstado(Semasforo semasforo) {
        semasforo.setEstado(new Rojo());
        mostrarAviso();
    }

    @Override
    public void mostrarAviso() {
        System.out.println("Despejar cruce");;
    }

}
