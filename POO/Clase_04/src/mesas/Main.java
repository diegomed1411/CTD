package mesas;

public class Main {
    public static void main(String[] args) {
        Usuariojuego Diego = new Usuariojuego("Diego", "123456", 5, 3);
        Diego.aumentarPuntaje();
        Diego.aumentarNivel();
        Diego.setNombre("Sebastian");
        System.out.println("Puntaje " + Diego.getPuntaje());
        System.out.println("Nivel "+Diego.getNivel());
        System.out.println("Su nombre es "+Diego.getNombre());

    }
}
