import java.util.ArrayList;
import org.apache.log4j.Logger;

public class ListaEnteros {
    private static final Logger logger = Logger.getLogger(ListaEnteros.class);
    private ArrayList<Integer> listaEnteros;

    public ArrayList<Integer> getListaEnteros() {
        return listaEnteros;
    }

    public void setListaEnteros(ArrayList<Integer> listaEnteros) {
        this.listaEnteros = listaEnteros;
    }

    public void agregarValor(Integer v){
        listaEnteros.add(v);
    }

    public double calcularPromedio(){
        int suma = 0;
        for (Integer elemento : listaEnteros){
            suma += elemento;
        }
        return suma / this.listaEnteros.size();
    }

    public void logDeLista(){
        try{
            if(listaEnteros.size()>0){
                logger.info("El promedio de la lista es: "+calcularPromedio());
                if(listaEnteros.size()>10){
                    logger.info("La lista contiene más de 10 elementos");
                } else if (listaEnteros.size()>5){
                    logger.info("La lista contiene más de 5 elementos");
                }


            }else {
                throw new Exception("La lista no tiene elementos");
            }

        }catch (Exception e){
            logger.error("La lista debe contener al menos un numero", e);
        }
    }

}
