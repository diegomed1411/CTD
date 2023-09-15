import java.util.ArrayList;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        Puerto BSAS = new Puerto("Buenos Aires");
        Contenedor cont1 = new Contenedor(1,"EEUU", false);
        Contenedor cont2 = new Contenedor(2,"Brasil", false);
        Contenedor cont9 = new Contenedor(9,"Desconocida", true);
        Contenedor cont3 = new Contenedor(3,"Rusia", true);
        Contenedor cont4 = new Contenedor(4,"Canada", false);
        Contenedor cont8 = new Contenedor(8,"Brasil", false);
        Contenedor cont5 = new Contenedor(5,"Desconocida", true);
        Contenedor cont6 = new Contenedor(6,"EEUU", false);
        Contenedor cont7 = new Contenedor(7,"Desconocida", false);
        Contenedor cont10 = new Contenedor(10,"China", false);
        BSAS.addContenedor(cont1);
        BSAS.addContenedor(cont2);
        BSAS.addContenedor(cont3);
        BSAS.addContenedor(cont4);
        BSAS.addContenedor(cont5);
        BSAS.addContenedor(cont6);
        BSAS.addContenedor(cont7);
        BSAS.addContenedor(cont8);
        BSAS.addContenedor(cont9);
        BSAS.addContenedor(cont10);
        BSAS.mostrarContenedores();
        BSAS.contenedoresDesconocidosPeligrosos();



    }
}