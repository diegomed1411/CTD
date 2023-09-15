import java.util.ArrayList;
import java.util.List;

public class GrupoFamiliar implements ComponenteGenealogico{
    private String nombre;
    private List<ComponenteGenealogico> familiares = new ArrayList<>();

    public GrupoFamiliar(String nombre) {
        this.nombre = nombre;
    }

    public void agregarFamiliar(ComponenteGenealogico familiar){
        familiares.add(familiar);
    }

    @Override
    public void mostrar() {
        System.out.println("grupo familiar: "+nombre);
        for(ComponenteGenealogico familiar: familiares){
            familiar.mostrar();
        }
    }


}
