package presencial;

public class Main {
    public static void main(String[] args){
        Producto bebida = new Producto("Coca Cola", 450.00);
        Cliente cliente = new Cliente("Jorge", "Montevideo");
        //cliente.comprar(bebida);
        Facturador facturador = new Facturador(cliente, bebida);
        facturador.facturar();
    }
}
