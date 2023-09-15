import java.util.ArrayList;
import java.util.List;

public class Carrito implements Comprable{
    private static int counter = 0;
    private int id;
    private List<Comprable> carrito = new ArrayList<>();

    public Carrito() {
        this.id = ++counter;
    }

    public void agregarAlCarrito(Comprable comprable){
        carrito.add(comprable);
    }

    public void vaciarCarrito(){
        this.carrito.clear();
    }


    @Override
    public String getName() {
        return ""+id;
    }

    @Override
    public Double getPrice() {
        Double totalCarrito = 0.0;
        for (Comprable comprable : carrito) {
            totalCarrito+= comprable.getPrice();
        }
        return totalCarrito;
    }

    @Override
    public String toString() {
        return "Carrito{" +
                "id=" + id +
                ", carrito=" + carrito +
                '}';
    }
}
