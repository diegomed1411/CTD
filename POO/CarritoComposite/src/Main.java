// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        Item coca = new Item("CocaCola", 150.07);
        Item papas = new Item("Papa Frita", 120.96);
        Item hamburguesa = new Item("Hamburguesa", 203.55);
        Item helado = new Item("Helado", 50.15);
        Item ensalada = new Item("Ensaladas", 114.95);
        Item Wrap = new Item("Wrap", 132.60);
        Item Cafe = new Item("Cafe", 45.83);

        Combo combo1 = new Combo("Cambo Almuerzo", 10.0, coca, papas, hamburguesa);
        Combo combo2 = new Combo("Fit", 5.0, ensalada, Wrap);
        Combo combo3 = new Combo("Desayuno", 20.0, Cafe, helado);

        Carrito carrito1 = new Carrito();
        carrito1.agregarAlCarrito(combo2);
        carrito1.agregarAlCarrito(coca);
        System.out.println(carrito1);
        System.out.println(carrito1.getPrice());
        System.out.println(combo2.getPrice());
        System.out.println(coca.getPrice());


    }
}