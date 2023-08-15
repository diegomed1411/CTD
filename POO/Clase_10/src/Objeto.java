public class Objeto {
    private Integer posx;
    private Integer posy;
    private String direccion;

    public Objeto(Integer posx, Integer posy, String direccion) {
        this.posx = posx;
        this.posy = posy;
        this.direccion = direccion;
    }

    public void irA(Integer x, Integer y, String direccion){
        this.posx = posx;
        this.posy = posy;
        this.direccion = direccion;
    }

    public Integer getPosx() {
        return posx;
    }

    public Integer getPosy() {
        return posy;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setPosx(Integer posx) {
        this.posx = posx;
    }

    public void setPosy(Integer posy) {
        this.posy = posy;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
}
