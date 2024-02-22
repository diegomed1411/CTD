public class Computadora {
    private String modelo;
    private Integer discoDuro;
    private Integer ram;
    private static Integer contador=0;


    public Computadora(String modelo, Integer discoDuro, Integer ram) {
        this.modelo = modelo;
        this.discoDuro = discoDuro;
        this.ram = ram;
        this.contador++;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public Integer getDiscoDuro() {
        return discoDuro;
    }

    public void setDiscoDuro(Integer discoDuro) {
        this.discoDuro = discoDuro;
    }

    public Integer getRam() {
        return ram;
    }

    public void setRam(Integer ram) {
        this.ram = ram;
    }

    public Integer getContador() {
        return contador;
    }

    public void setContador(Integer contador) {
        this.contador = contador;
    }

}
