import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static List <Float> numeros = new ArrayList<>();
    private static final Logger logger = Logger.getLogger(Main.class);
    public static void main(String[] args) {

        try{

            if (numeros.size() > 10) {
            logger.info(" La longitud de la lista es mayor a 10");
        } else if (numeros.size() > 5) {
            logger.info(" La longitud de la lista es mayor a 5");}

        }catch (Exception e){

        }
        if(numeros.isEmpty()){
           logger.error("La lista es igual a cero");
        } else if (numeros.size() > 10) {
            logger.info(" La longitud de la lista es mayor a 10");
        } else if (numeros.size() > 5) {
            logger.info(" La longitud de la lista es mayor a 5");}
    }
}