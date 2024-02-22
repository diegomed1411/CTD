package presencial;

public class Persona {
    private String nombre;
    private Integer edad;

    public Persona(String nombre, Integer edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    //metodo para chequear que es mayor de edad
    public boolean esMayor(){
        return edad>18;
    }
    // metodo para chequear que el nombre tenga mas de 4 letras
    public boolean letrasCheck(){
        return nombre.length()>4;
    }

    //metodo para validar que el nombre contenga letras de la a - z
    public boolean checkAZnombre(){
        boolean respuesta = false;
        char[] nombreChars;
        for (char letra : nombreChars = nombre.toCharArray()) {
            if(!Character.isLetter(letra)){
                return respuesta;
            };
        };
        respuesta = true;
        return respuesta;
    };

    //chequear si la edad es real menor a 120
    public boolean checkEdadReal(){
        return edad>0 && edad < 120;
    }
};
