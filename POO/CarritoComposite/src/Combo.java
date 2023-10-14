import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Combo implements Comprable{
    private String nombre;
    private Double descuento;
    private List<Comprable> listaProductos = new ArrayList<>();

    public Combo(String name, Double descuento, Comprable... listaDeProductos) {
        this.listaProductos = Arrays.stream(listaDeProductos).toList();
        this.descuento = descuento;
        this.nombre = name;
    }

    @Override
    public String getName() {
        return this.nombre;
    }

    @Override
    public Double getPrice() {
        Double precioTotal=0.0;
        for (Comprable listaProducto : listaProductos) {
            precioTotal+=listaProducto.getPrice();
        }
        return precioTotal*(1-descuento/100);
    }

    @Override
    public String toString() {
        return "Combo{" +
                "nombre='" + nombre + '\'' +
                ", descuento=" + descuento +
                ", listaProductos=" + listaProductos +
                '}';
    }

    public void agregarComprable(Comprable comprable) {
        listaProductos.add(comprable);
    }

    public void quitarComprable(Comprable comprable) {
        listaProductos.remove(comprable);
    }
}
