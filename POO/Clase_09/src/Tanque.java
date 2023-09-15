public class Tanque extends SistemaArmas implements iAtacar, iDefender{
    @Override
    public void mostrar() {
        System.out.println("mostrar tanque");
    }

    public Tanque(Integer energia) {
        super(energia);
    }

    @Override
    public void atacar() {
        System.out.println("ataca tanque");
    }

    @Override
    public void defender() {
        System.out.println("defiende tanque");
    }

    @Override
    public String toString() {
        return "Tanque{" +
                "energia=" + energia +
                '}';
    }
}
