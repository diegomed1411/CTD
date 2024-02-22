public class Vacunatorio implements VacunatorioInterface{
    @Override
    public String vacunar(Persona persona) {
        return "Se verificaron los datos. Persona vacunada: "+persona.getNombre()+" "+persona.getApellido();
    }
}
