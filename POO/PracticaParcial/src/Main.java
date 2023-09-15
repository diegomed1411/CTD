
public class Main {
    public static void main(String[] args) {
        Capitan Rodri = new Capitan("Rodri","E","12345");

        Yate mio = new Yate(Rodri,10.0,10.0,2020,2, 1);

        Velero lindo = new Velero(Rodri, 50.6, 10.3, 2021, 5, 5);

        System.out.println(lindo.evaluar());

    }
}