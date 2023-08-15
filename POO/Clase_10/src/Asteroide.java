public class Asteroide extends Objeto{
    private Integer lesion;

    public Asteroide(Integer posx, Integer posy, String direccion, Integer lesion) {
        super(posx, posy, direccion);
        this.lesion = lesion;
    }

    @Override
    public void irA(Integer x, Integer y, String direccion) {
        super.irA(x, y, direccion);
    }
}
