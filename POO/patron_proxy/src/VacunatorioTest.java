import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import java.util.Date;

public class VacunatorioTest {
    @Test
    public void casoCorrecto(){
        Persona persona = new Persona("Nico", "Perez", "123456", new Date(2024,1,1),"Aztrazeneca");
        VacunatorioProxy vacunatorioProxy=new VacunatorioProxy();
        String respuestaEsperada = "Se verificaron los datos. Persona vacunada: Nico Perez";

        String respuestaActual = vacunatorioProxy.vacunar(persona);

        Assertions.assertEquals(respuestaEsperada, respuestaActual);
    }

}
