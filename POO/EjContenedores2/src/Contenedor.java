public class Contenedor implements Comparable<Contenedor>{
    private Integer id;
    private String procedencia;
    private Boolean peligroso;

    public Contenedor(Integer id, String procedencia, Boolean peligroso) {
        this.id = id;
        this.procedencia = procedencia;
        this.peligroso = peligroso;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProcedencia() {
        return procedencia;
    }

    public void setProcedencia(String procedencia) {
        this.procedencia = procedencia;
    }

    public Boolean getPeligroso() {
        return peligroso;
    }

    public void setPeligroso(Boolean peligroso) {
        this.peligroso = peligroso;
    }

    @Override
    public int compareTo(Contenedor o) {
        return this.getId() - o.getId();
    }
}
