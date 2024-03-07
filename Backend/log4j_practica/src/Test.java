import org.apache.log4j.Logger;

public class Test {
    private static final Logger logger = Logger.getLogger(Test.class);
    public static void main(String[] args) {
        logger.info("corriendo el programa");
        Leon simba = new Leon("Simba", 15,true);
        Tigre manchita = new Tigre("Manchita", 6);
        simba.correr();
        manchita.correr();
        simba.esMayora10();
    }
}