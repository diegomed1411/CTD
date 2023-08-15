package presencial;

public class Facturador {
    private Cliente cliente;
    private Producto producto;

    public Facturador(Cliente cliente, Producto producto){
        this.cliente = cliente;
        this.producto = producto;
    }

    public void facturar(){
        System.out.println("Factura generada al cliente: "+cliente.getNombre());
        System.out.println("Producto adquirido: "+producto.getNombre());
        System.out.println("Total pagado: "+producto.getPrecio());
    }
}
