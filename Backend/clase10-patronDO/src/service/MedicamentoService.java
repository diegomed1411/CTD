package service;

import dao.IDao;
import dao.implementation.MedicamentoDAOH2;
import model.Medicamento;

public class MedicamentoService {

    private IDao<Medicamento> medicamentoIDao;

    public MedicamentoService() {
        this.medicamentoIDao = new MedicamentoDAOH2();
    }

    public Medicamento guardar(Medicamento medicamento) {
        return medicamentoIDao.guardar(medicamento);
    }




}
