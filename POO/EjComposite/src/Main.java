public class Main {
    public static void main(String[] args) {
     Persona persona1 = new Persona("Diego");
     Persona persona2 = new Persona("Jorge");
     Persona persona3 = new Persona("Pedro");
     Persona persona4 = new Persona("Juan");
     Persona persona5 = new Persona("Andres");
     Persona persona6 = new Persona("Carla");
     Persona persona7 = new Persona("Maria");

     GrupoFamiliar familia1 = new GrupoFamiliar("Familia Gonzalez");
     familia1.agregarFamiliar(persona1);
     familia1.agregarFamiliar(persona2);

     GrupoFamiliar familia2 = new GrupoFamiliar("Familia Perez");
     familia2.agregarFamiliar(persona3);
     familia2.agregarFamiliar(persona4);
     familia2.agregarFamiliar(persona5);

     ArbolGenealogico arbol = new ArbolGenealogico(familia1);

    }
}