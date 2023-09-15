import static ui.UIMenu.*;

public class Main {
    public static void main(String[] args) {
        //showMenu();

        Doctor myDoctor = new Doctor("Pedro Morado", "Otorrino");
        Patient paciente = new Patient("Diego", "diego@mail.com");
        System.out.println(paciente.getName());
        paciente.setWeight(101);
        paciente.setHeight(189);
        System.out.println(paciente.getHeight());
        }
}