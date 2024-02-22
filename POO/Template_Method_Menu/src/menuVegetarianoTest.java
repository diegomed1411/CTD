import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class menuVegetarianoTest {
    @Test
    public void testMenuVegetariano(){
        Menu veggie = new Vegetariano(100.0,5,3);
        String respuesta = "Menu base: 100.0\\nCantidad de especias: 5\\Cantidad de salsas: 3\\nTotal: 111.0";
        String pedido = veggie.armadoMenu();

        assertEquals(respuesta, pedido);
    }
}
