// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Inicializador {
    public static void main(String[] args) {
        System.out.println("***Bienvenidos***");
        Mascota manchitas = new Mascota("Perro","Manchitas", 2, 1.5,"Guau guau");
        Mascota nemo = new Mascota("Pez", "Nemo", 1,0.140, "Glu Glu");
        Mascota silvestre = new Mascota("Gato", "Silvestre", 3, 0.5, "Miau");
        Mascota manuelita = new Mascota("Tortuga", "Manuelita", 12, 0.3, "Peguajo");
        Mascota gardel = new Mascota("Pajaro", "Gardel", 1, 0.350, "Piu Piu");
        System.out.println(manchitas.toString());
        System.out.println(nemo.toString());
        System.out.println(silvestre.toString());
        System.out.println(manuelita.toString());
        System.out.println(gardel.toString());
    }
}