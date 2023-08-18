package presencial;

public abstract class Animal {
    private String nombre;
    private String raza;
    public abstract void hacerSonido();
    public void comida(){
        System.out.println("todos los animales comen");
    }

}
