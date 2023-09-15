public class Verde implements Estado{


    @Override
    public void cambiarEstado(Semasforo semasforo) {
        semasforo.setEstado(new Amarillo());
        mostrarAviso();
    }

    @Override
    public void mostrarAviso() {
        System.out.println("Avanzar");;
    }

    
}
