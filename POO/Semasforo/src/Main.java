public class Main {
    public static void main(String[] args) {
        Semasforo semasforo = new Semasforo();
        semasforo.getEstado().cambiarEstado(semasforo);
        semasforo.getEstado().cambiarEstado(semasforo);
        semasforo.getEstado().cambiarEstado(semasforo);
    }
}
