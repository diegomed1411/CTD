import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Equipo {
    private String nombre;
    private List<Jugador> jugadorList;

    public Equipo(String nombre) {
        this.nombre = nombre;
        this.jugadorList = new ArrayList<>();
    }

    public void addJugador(Jugador jugador){
        jugadorList.add(jugador);
    }

    public void mostrarJugadoresTitulares(){
        System.out.println("**** Jugadores titulares ****");
        List<Jugador> listaOrdenada = new ArrayList<>();
        for (Jugador jugador:jugadorList){
            if(jugador.isTitular()){
                listaOrdenada.add(jugador);
            }
        }
        Collections.sort(listaOrdenada);
        for (Jugador jugador: listaOrdenada){
            System.out.println("Nombre: "+jugador.getNombre()+ " Numero: "+jugador.getNroCamiseta());
        }
    }

    public int getCantidadJugadoresLesionados(){
        int cantidadLesionadosTitulares = 0;
        for(Jugador jugador: jugadorList){
            if(jugador.isTitular() && jugador.isLesionado()){
                cantidadLesionadosTitulares++;
            }
        }
        return cantidadLesionadosTitulares;
    }
}
