import org.apache.log4j.Logger;

public class Leon extends Animal{
    private static final Logger logger = Logger.getLogger(Leon.class);
    private boolean esAlfa;

    public Leon(String nombre, Integer edad, boolean esAlfa) {
        super(nombre, edad);
        this.esAlfa = esAlfa;
    }

    public boolean isEsAlfa() {
        return esAlfa;
    }

    public void setEsAlfa(boolean esAlfa) {
        this.esAlfa = esAlfa;
    }

    public void esMayora10() {
        logger.info("Estamos validando la edad del "+getClass().getSimpleName() +" "+getNombre());
        try{
            if (getEdad()<0){
                throw new Exception("La edad del "+this.getClass().getSimpleName()+" "+getNombre()+" es incorrecta");
            };

        }catch (Exception e){
            logger.error("La edad no puede ser negativa",e);
        }
        if (isEsAlfa() && this.getEdad()>10){
            logger.info("La edad de "+getNombre()+" es de "+getEdad());
        }

    }
}
