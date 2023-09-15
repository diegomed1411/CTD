public class Yate extends Embarcacion implements Comparable{

    private Integer camarote;
    public Yate(Capitan capitan, double precioBase, double valorAdicional, int anioFabricacion, double eslora, Integer camarote) {
        super(capitan, precioBase, valorAdicional, anioFabricacion, eslora);
        this.camarote = camarote;
    }

    public Integer getCamarote() {
        return camarote;
    }

    public void setCamarote(Integer camarote) {
        this.camarote = camarote;
    }

    @Override
    public int compareTo(Object otroYate) {
        if (this.getCamarote() > ((Yate) otroYate).getCamarote()) {
            // este yate es mas lujoso
            return 1;
        } else if (this.getCamarote() == ((Yate) otroYate).getCamarote()) {
            // este yate es igual de lujoso
            return 0;
        } else {
            // este yate es menos lujoso
            return -1;
        }
    }


    @Override
    public String toString() {
        return super.toString() + camarote;
    }
};






       /* if(this.getCantidadCamarotes()>((Yate) o).getCantidadCamarotes()){
            return 1;
        }else if(this.getCantidadCamarotes()==((Yate) o).getCantidadCamarotes()){
            return 0;
        }else{
            return -1;
        }*/
