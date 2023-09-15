import java.util.ArrayList;
import java.util.List;

public class Puerto{
    private String nombre;
    private List<Contenedor> contenedores = new ArrayList<>();

    public Puerto(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void addContenedor(Contenedor contenedor) {
        this.contenedores.add(contenedor);
    }

    public void mostrarContenedores(){
        contenedores.sort(Contenedor::compareTo);
        for(Contenedor contenedor: contenedores){
            System.out.println(contenedor.getId()+" : ,Procedencia: "+contenedor.getProcedencia()+" ,Peligroso: "+contenedor.getPeligroso());
        }
    }

    public void contenedoresDesconocidosPeligrosos(){
        for(Contenedor contenedor: contenedores){
            if(contenedor.getProcedencia()=="Desconocida" && contenedor.getPeligroso()){
                System.out.println(contenedor.getId()+" : ,Procedencia: "+contenedor.getProcedencia()+" ,Peligroso: "+contenedor.getPeligroso());
        }}
    }

}
