package presencial;

public class Cliente {
    private String nombre;
    private String direccion;

    public Cliente(String nombre, String direccion) {
        this.nombre = nombre;
        this.direccion = direccion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void comprar(Producto producto){
        System.out.println("Adquiriste el siguiente producto: "+producto.getNombre());
        System.out.println("El precio abonado fue de: "+producto.getPrecio());
    }
}
