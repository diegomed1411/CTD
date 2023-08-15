public class Nave extends Objeto{
    private Double velocidad;
    private Integer vida;

    public Nave(Integer x, Integer y, String direccion, Double velocidad, Integer vida){
        super(x, y, direccion);
        this.velocidad = velocidad;
        this.vida = vida;
    }

    public Double getVelocidad() {
        return velocidad;
    }

    public void setVelocidad(Double velocidad) {
        this.velocidad = velocidad;
    }

    public Integer getVida() {
        return vida;
    }

    public void setVida(Integer vida) {
        this.vida = vida;
    }

    @Override
    public void irA(Integer x, Integer y, String direccion) {
        super.irA(x, y, direccion);
    }

    public void girar(String direccion){
        setDireccion(direccion);
    }

    public void restaVida(Integer valor){
        setVida(this.vida - valor);
    }
}
