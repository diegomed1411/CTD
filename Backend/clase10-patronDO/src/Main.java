import dao.BD;
import model.Medicamento;
import service.MedicamentoService;

public class Main {
    public static void main(String[] args) {
        //crear mi medicamento -> guardarlo en la BD

        MedicamentoService medicamentoService = new MedicamentoService();
        BD.createTable();

        Medicamento medicamento = new Medicamento("Paracetamol", "Bayer", 10, 20.0, 123);
        medicamentoService.guardar(medicamento);


    }
}
