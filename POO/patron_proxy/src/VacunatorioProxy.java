import java.util.Date;

public class VacunatorioProxy implements VacunatorioInterface{
    private Vacunatorio vacunatorio;

    public VacunatorioProxy() {
        vacunatorio = new Vacunatorio();
    }


    @Override
    public String vacunar(Persona persona) {
        Date hoy = new Date();
        if(hoy.after(persona.getFechaVacuna())){
            return vacunatorio.vacunar(persona);
        }else{
            return "no se puede vacunar, vuelva mas tarde";
        }

    }
}
