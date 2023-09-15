public abstract class SistemaArmas {
    public Integer energia;

    public abstract void mostrar();

    public Integer getEnergia() {
        return energia;
    }

    public void setEnergia(Integer energia) {
        this.energia = energia;
    }

    public SistemaArmas(Integer energia) {
        this.energia = energia;
    }

    @Override
    public String toString() {
        return "SistemaArmas{" +
                "energia=" + energia +
                '}';
    }
}
