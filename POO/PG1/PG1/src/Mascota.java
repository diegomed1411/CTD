/*
Ejercicio
Para representar cada una de las características de las mascotas, crear una variable y darle
el valor correspondiente en el IDE IntelliJ. No olvidar darle el tipo adecuado a lo que
queremos que contenga. Por cada mascota de la veterinaria que figura en la siguiente
tabla, vamos a tener que mostrar la información del animal. La información va a mostrarse
como el siguiente ejemplo:
“Manchitas tiene 2 años”
“Manchitas come un kilo y medio y hace guau guau”
*/

public class Mascota {
    String tipo;
    String nombre;
    Integer edad;
    Double cantidadComida;
    String sonido;

    public Mascota(String tipo, String nombre, Integer edad, Double cantidadComida, String sonido) {
        this.tipo = tipo;
        this.nombre = nombre;
        this.edad = edad;
        this.cantidadComida = cantidadComida;
        this.sonido = sonido;
    }

    @Override
    public String toString() {
        return "Mascota{" +
                "tipo='" + tipo + '\'' +
                ", nombre='" + nombre + '\'' +
                ", edad=" + edad +
                ", cantidadComida=" + cantidadComida +
                ", sonido='" + sonido + '\'' +
                '}';
    }
}
