import java.util.HashMap;
import java.util.Map;

public class ComputadoraFactory {
    public Map<String, Computadora> computadoraMap;

    public ComputadoraFactory() {
        this.computadoraMap = new HashMap<>();
    }

    public Computadora getComputadora(Integer ram, Integer discoDuro, String modelo){
        String clave = "key: "+ram+discoDuro+modelo;
        if(!computadoraMap.containsKey(clave)){
            Computadora computadora = new Computadora("Windows2", 128,2);
            computadoraMap.put(clave, computadora);
        }
        return computadoraMap.get(clave);

    }
}
